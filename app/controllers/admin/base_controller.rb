class Admin::BaseController < ApplicationController
  inherit_resources
  layout "admin"

  before_filter :auth_logined?

  private

  def auth_logined?
    redirect_to "/admin" unless session["user_id"]
  end

end
