class Admin::SessionsController < Devise::SessionsController
	layout 'admin'

	def new
		super
	end

	def create
		super
	end

	def destroy
		super
	end

	def after_sign_out_path_for(resource)
    new_user_session_path
  end
end