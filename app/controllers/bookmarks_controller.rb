class BookmarksController < ApplicationController

before_action :set_bookmark, only: [:destroy]

  def new
    @bookmark = Bookmark.new
    @list = List.find(params[:list_id])
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    movie = Movie.find(params[:bookmark][:movie_id])
    list = List.find(params[:list_id])
    @bookmark.movie = movie
    @bookmark.list = list
    if @bookmark.save!
      redirect_to list_path(list)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to list_path(@bookmark.list)
  end

  private

  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie)
  end
end
