class BookmarksController < ApplicationController
  before_action :set_list, only: [:new, :create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = @list.bookmarks.build(bookmark_params)

    if @bookmark.save
      redirect_to @list, notice: 'Bookmark was successfully created.'
    else
      render 'new'
    end
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    list = @bookmark.list
    if @bookmark.destroy
      redirect_to list_path(list), notice: 'Bookmark was successfully deleted.'
    else
      redirect_to list_path(list), alert: 'Bookmark could not be deleted.'
    end
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:comment, :movie_id)
  end

  def set_list
    @list = List.find(params[:list_id])
  end

end
