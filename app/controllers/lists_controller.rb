class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def create
    @list = List.new(review_params)
    @movie = Movie.find(params[:movie_id])
    @list.movie = @movie
  end


    private

    def review_params
      params.require(:bookmark).permit(:list)
    end
end
