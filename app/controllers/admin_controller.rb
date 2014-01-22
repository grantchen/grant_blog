class AdminController < ApplicationController
  def index
    redirect_to admin_blogs_path
  end
end