class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    # @list = List.find(params[:list_id])
    @list = List.new
  end

  def show
    @list = List.find(params[:id])
    @bookmark = @list.bookmarks.build
  end

  def create
  @list = List.new(list_params)
  if @list.save
    redirect_to @list
  else
    render :new, status: :unprocessable_entity
  end
end

  private

  def set_movie
    @movie = Movie.find(params[:movie_id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
