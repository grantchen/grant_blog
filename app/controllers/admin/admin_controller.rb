class Admin::AdminController < ApplicationController
  layout "application"
  def index
    if session["user_id"]
      redirect_to admin_blogs_path
    else
      render '/admin/login'
    end
  end

  def login
    @user_name = params[:user_name]
    if User.find_by(name: params[:user_name], role: "admin").try(
                    :authenticate, params[:user_password])
      session["user_id"] = @user_name
      redirect_to admin_blogs_path
    else
      render '/admin/login'
    end
  end

  def logout
    reset_session
    redirect_to admin_path
  end
end