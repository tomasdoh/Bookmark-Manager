require 'sinatra/base'
require './lib/bookmark'
require './database_connection_setup'

class BookmarkManager < Sinatra::Base

  enable :sessions, :method_override

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:list)
  end

  get '/bookmarks/new' do
    erb(:new)
  end

  post '/new-bookmark' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  end

  delete '/bookmarks/:id' do
    Bookmark.delete(id: params[:id])
    redirect '/bookmarks'
  end

  get '/bookmarks/:id/edit' do
    @bookmark = Bookmark.search(id: params[:id])
    erb(:edit)
  end

  patch '/bookmarks/:id' do
    Bookmark.update(id: params[:id], title: params[:title], url: params[:url])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
