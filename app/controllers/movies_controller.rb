class MoviesController < ApplicationController
  respond_to :json
  def index
    respond_with Movie.all
  end
end
