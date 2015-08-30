class Newsfeed
  def initialize(csv_file)
    @news = []
    @csv_file = csv_file
    load_csv
  end

  def all
    @news
  end

  private

  def load_csv
    return unless File.exist?(@csv_file)

    CSV.foreach(@csv_file) do |row|
      attributes = {
        title: row[0],
        url: row[1]
      }
      @news << News.new(attributes)
    end

  end
end
