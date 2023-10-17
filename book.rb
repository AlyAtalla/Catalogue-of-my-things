relative_require '/item.rb'
class Book
    attr_accessor :publisher, :cover_state

    def initialize(publisher, cover_state, publish_date, archived: false)
      super(publish_date, archived: archived)
      @publisher = publisher
      @cover_state = cover_state
    end

    private

    def can_be_archived?
      super == true || @cover_state.downcase == 'bad'
    end
end
