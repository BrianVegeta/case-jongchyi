class PagesController < ApplicationController
  before_action :authenticate_user!, only: [
    :inside
  ]

  def home
  	render layout: 'slide'
  end
  
  def home_new
    render layout: 'slide_new'
  end
    
  def support

  end

  def contact
  	
  end
end
