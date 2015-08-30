class Controller
  def initialize(newsfeed)
    @newsfeed = newsfeed
    @view = View.new
  end

  def list
    news = @newsfeed.all
    @view.display_news(news)
  end
end
