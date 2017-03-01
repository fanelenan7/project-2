class AlbumsController < ApplicationController

  def index
    @albums = Album.all
  end

  def show
    @album = Album.find(params[:id])
  end

  def edit
    @album = Album.find(params[:id])
  end

  def new
    @album = Album.new
  end

  def create
    @album = Album.create!(album_params.merge(user: current_user))
    # redirect to root because it feels more user-friendly than just stare at an empty album
    redirect_to "/"
  end

  def update
    @album = Album.find(params[:id])
    @album.update(album_params.merge(user:current_user))
    redirect_to album_path(@album)
  end

  def destroy
    @album = Album.find(params[:id])
    @album.destroy
    # redirect to root because there is no index page for albums
    redirect_to "/"
  end

  private
  def album_params
    params.require(:album).permit(:title)
  end
  
end
