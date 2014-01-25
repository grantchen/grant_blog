class Admin::BlogTemplatesController < Admin::BaseController
  def permitted_params
    params.permit(:blog_template => [:title, :content])
  end

  def show
    redirect_to admin_blog_templates_path
  end

  def get_content
    blog_content = BlogTemplate.find(params[:id])
    render text: blog_content.content
  end
end