class Link < Post
  def initialize

    super

    @url = ''
  end

  def read_from_console
    # Спрашиваем у пользователя url ссылки и записываем в переменную @url
    puts 'Адрес ссылки (url):'
    @url = STDIN.gets.chomp

    puts 'Что за ссылка?'
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Создано: #{@created_at.strftime('%Y.%m.%d, %H:%M:%S')} \n"

    [@url, @text, time_string]
  end
end