class News
  attr_reader :title, :url

  def initialize(attributes)
    @title = attributes[:title]
    @url = attributes[:url]
  end

  def to_s
    "Breaking: #{title} - more at #{url}"
  end
end
