class CitiesController < ApplicationController

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
    @categories = Category.all

    respond_to do |f|
      f.js {}
      f.html {}
    end

  end

end
