class Admin::BlogCatsController < Admin::BaseController

  def permitted_params
    params.permit(:blog_cat => [:title, :cat_type, :sort])
  end

  def show
    redirect_to admin_blog_cats_path
  end
end