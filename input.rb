module Input
  def user_input
    gets.chomp
  end

  def y_n
    response = ''
    loop do
      print yield
      response = user_input
      break true if response.upcase == 'Y'
      break false if response.upcase == 'N'
    end
  end

  def text
    print yield
    user_input
  end
end
