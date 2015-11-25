class RatingsController < ApplicationController

  def create
    @rating = Rating.new(params[:severity])
  end

  def edit
    @rating = self.update_rating(rating_string)
  end

  def show
    @rating = Rating.find(params[:id])
  end
end
