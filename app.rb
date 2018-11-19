require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base

  get '/' do
    @bookmark = Bookmark.create
    erb(:index)
  end

  get '/bookmarks' do
    @bookmark = Bookmark.instance
    erb(:bookmarks)
  end

  run! if app_file == $0

end
