class Admin::RegistrationsController < Devise::RegistrationsController

  protected

    def after_update_path_for(resource)
      raise 'test'
    end
end