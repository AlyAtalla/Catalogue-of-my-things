class Item
  attr_accessor :id, :publish_date, :archived
  attr_reader :genre
  attr_writer :author, :label, :source

  def initialize(publish_date, archived, id = Random.rand(1..1000))
    @id = id
    @publish_date = publish_date
    @archived = archived
  end

  def can_be_archived?
    time = Time.now
    year = time.year
    published_year = @publish_date.year
    results = year - published_year
    results > 10
  end

  def genre=(genre)
    @genre = genre
    genre.items << self unless genre.items.include?(self)
  end

  def move_to_archive
    @archived = true if can_be_archived? == true
  end
end

object = Item.new(Time.new(2015, 1, 1), false)
puts object.can_be_archived?
puts object.move_to_archive
