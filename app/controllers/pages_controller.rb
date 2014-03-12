class PagesController < ApplicationController
  before_action :authenticate_user!, only: [
    :inside
  ]

  def home
  	render layout: 'slide'
  end
    
  def support
    set_page_title I18n.t('nav_support')
  end

  def contact
    set_page_title I18n.t('nav_contact')
  end
end
