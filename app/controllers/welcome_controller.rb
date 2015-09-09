class WelcomeController < ApplicationController
  def index
    @homeland = 'Puerto Rico'
    @countries = ['Chile', 'Bolivia', 'Croatia']
    @images = ['chile.jpg', 'bolivia.jpg' ,'croatia.jpg']
  end

  def about
    @background = params[:background]
    @foreground = params[:foreground]
  end
end
