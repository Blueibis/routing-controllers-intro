class PagesController < ApplicationController
  def welcome
    @header = "This is the welcome page"
    render :about
  end
  def about
  end
  def contest
  end
  def kitten
    size = params[:size]
    @kitten_url = "http://lorempixel.com/#{size}/#{size}/cats"
  end
end
