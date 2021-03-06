class PagesController < ApplicationController
  before_action :set_kitten_url, only: [:kitten, :kittens]
  def welcome
    @header = "This is the welcome page"
    render :about
  end

  def about
  end

  def contest
    flash[:notice] = "Sorry, the contest has ended."
    redirect_to welcome_path
  end

  def kitten
  end

  def kittens
  end

  def set_kitten_url
    size = params[:size]
    @kitten_url = "http://lorempixel.com/#{size}/#{size}/cats"
  end

  def secrets
    if params[:magic_word] != "kittens"
      flash[:alert] = "Incorrect password"
      redirect_to welcome_path
    else
    end
  end

end
