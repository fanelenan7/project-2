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
    redirect_to "/"
  end
  private
  def album_params
    params.require(:album).permit(:title)
  end
end
