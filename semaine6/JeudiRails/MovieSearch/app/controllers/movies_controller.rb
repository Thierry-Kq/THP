class MoviesController < ApplicationController
  def search
  end

  def find
    if params[:movie] == ""
      redirect_to '/'
    else 
      @movies = SearchMovie.new(params[:movie]).perform
      if @movies == {}
        @movies = "vide"
      end
    end
  end
end