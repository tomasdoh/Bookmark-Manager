class Bookmark

  LIST = {
      "Makers Academy" => "http://makers.tech",
      "BBC News" => "http://bbcnews.com"
  }

  def initialize(list = LIST)
    @list = list
  end

  def all
    @list
  end

  def self.instance
    @bookmark
  end

  def self.create
    @bookmark = Bookmark.new
  end

end
