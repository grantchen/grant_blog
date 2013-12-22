class Admin::BlogTabsController < Admin::BaseController

  def permitted_params
    params.permit(:blog_tab => [:title, :tab_type, :sort])
  end

  def show
    redirect_to admin_blog_tabs_path
  end
end