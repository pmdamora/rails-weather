class PagesController < ApplicationController
  def home
    @city = City.new
    @cities = City.all
  end

  def help
  end
end
