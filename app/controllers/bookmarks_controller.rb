class BookmarksController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @bookmark = @list.bookmarks.build(bookmark_params)

    if @bookmark.save
      redirect_to @list, notice: "Film ajouté à la liste."
    else
      render "lists/show", status: :unprocessable_entity
    end
  end

  def show
    @list = List.find(params[:id])
    @bookmark = @list.bookmarks.build
  end

  private

  def bookmark_params
    params.require(:bookmark).permit(:movie_id, :comment)
  end
end
