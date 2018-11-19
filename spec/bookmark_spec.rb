require 'bookmark'

describe Bookmark do

  describe '#all' do
    it 'lists all of the bookmarks' do
      expect(subject.all).to include('http://makers.tech')
      expect(subject.all).to include('http://bbcnews.com')
      expect(subject.all).to include('http://google.com')
    end
  end

  describe '#self.instance' do
    it 'allows access to an instance of Game' do
      bookmark = Bookmark.create
      expect(Bookmark.instance).to eq bookmark
    end
  end

  describe '#self.create' do
    it 'creates a new instance of Game' do
      bookmark = Bookmark.create
      expect(bookmark).to eq bookmark
    end
  end
end
