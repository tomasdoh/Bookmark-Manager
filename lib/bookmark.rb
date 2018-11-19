class Bookmark

  LIST = [
      "http://makers.tech",
      "http://bbcnews.com",
      "http://google.com"
  ]

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
