class View
  def display_news(news)
    news.each do |news|
      puts news
    end
  end

  def ask_what_to_scrap
    puts "What part of reddit do you want to scrap?"
    return gets.chomp
  end
end
