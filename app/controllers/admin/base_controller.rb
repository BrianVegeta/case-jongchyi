class Admin::BaseController < ApplicationController
  before_filter :require_admin!
  before_filter :set_locale
  layout 'admin'
  
  def index
    @last_signups = User.last_signups(10)
    @last_signins = User.last_signins(10)
    @count = User.users_count 
  end

  def set_locale
    I18n.locale = 'zh-TW'
  end
end
