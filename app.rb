require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    @bookmarks = Bookmark.create
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.instance
    erb(:bookmarks)
  end

  run! if app_file == $0

end
