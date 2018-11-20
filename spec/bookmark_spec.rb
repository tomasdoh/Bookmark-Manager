require 'bookmark'

describe Bookmark do

  describe '#self.all' do
    bookmarks = Bookmark.all
    it 'lists all of the bookmarks' do
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://google.com')
    end
  end
end
