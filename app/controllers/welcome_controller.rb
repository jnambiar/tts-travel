class WelcomeController < ApplicationController
  def index
    @homeland = 'Puerto Rico'
    @countries = ['Chile', 'Bolivia', 'Croatia']
  end

  def about
    @background = params[:background]
    @foreground = params[:foreground]
  end
end
