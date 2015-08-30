class Controller
  def initialize(newsfeed)
    @newsfeed = newsfeed
    @view = View.new
    @scrapper = RedditScrapper.new
  end

  def list
    news = @newsfeed.all
    @view.display_news(news)
  end

  def scrap
    subreddit = @view.ask_what_to_scrap
    news = @scrapper.scrap(subreddit)
    @view.display_news(news)
  end
end
