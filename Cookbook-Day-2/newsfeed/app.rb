require_relative 'news'
require_relative 'view'
require_relative 'newsfeed'    # You need to create this file!
require_relative 'controller'  # You need to create this file!
require_relative 'router'
require_relative 'reddit_scrapper'

require 'csv'

CSV_FILE = File.join(File.dirname(__FILE__), 'news.csv')
newsfeed = Newsfeed.new(CSV_FILE)
controller = Controller.new(newsfeed)

router = Router.new(controller)

# Start the app
router.run

