require 'net/http'
require 'json'

class PagesController < ApplicationController
  def home
    @cities = City.all
  end

  def help
  end
end
