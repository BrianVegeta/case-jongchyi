class Admin::UsersController < Admin::BaseController
  before_action :set_user, only: [
    :show,
    :edit,
    :update,
    :destroy
  ]
  

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    new_params = user_params.dup
    new_params[:username] = new_params[:username].strip
    new_params[:admin] = true
    @user = User.new(new_params)
    if @user.save
      redirect_to admin_users_path, notice: '管理員成功新增'
    else
      flash.now[:alert] = extrac_error_message(@user)
      render 'new'
    end
  end
  
  def show
    redirect_to edit_admin_user_path(params[:id])
  end
  
  def edit

  end
  
  def update
    old_username = @user.username
    new_params = user_params.dup
    new_params[:username] = new_params[:username].strip
    
    @user.username = new_params[:username]
    if new_params[:password].strip.length > 0
      @user.password = new_params[:password] 
      @user.password_confirmation = new_params[:password_confirmation]
    end  
    
    if @user.save
      redirect_to admin_users_path, notice: "#{@user.username} 已變更。"
    else
      flash.now[:alert] = extrac_error_message(@user)
      render :edit
    end
  end
  
  def destroy
    if @user.super? && @user.admin?
      redirect_to admin_users_path  
      return
    end
    @user.destroy
    redirect_to admin_users_path
  end
  
  private 
  
    def set_user
      @user = User.friendly.find(params[:id])
    rescue
      flash[:alert] = "The user with an id of #{params[:id]} doesn't exist."
      redirect_to admin_users_path
    end
    
    def user_params
      params.require(:user).permit(
      :username,
      :password,
      :password_confirmation
      )
    end
  
end
