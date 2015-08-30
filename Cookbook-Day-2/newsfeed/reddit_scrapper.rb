require 'nokogiri'
require 'open-uri'
require_relative 'news'

class RedditScrapper
  def scrap(subreddit)
    url = "https://reddit.com/r/#{subreddit}"
    document = Nokogiri::HTML(open(url))

    document.css(".entry.unvoted > p > a.title").map do |entry|
      News.new(url: entry.attr("href"), title: entry.text)
    end
  end
end
