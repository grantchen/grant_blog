class Admin::BlogTemplatesController < Admin::BaseController
  def permitted_params
    params.permit(:blog_template => [:title, :content])
  end

  def show
    redirect_to admin_blog_templates_path
  end
end