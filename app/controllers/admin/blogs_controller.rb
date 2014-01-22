class Admin::BlogsController < Admin::BaseController

  before_filter :load_blog_templates, only: [:new, :edit]

  def permitted_params
    params.permit(:blog => [:title, :blog_template_id, :content])
  end

  def new
    @blog = Blog.new
    @blog.build_blog_template
  end

  def index
    @blogs = Blog.paginate(:page => params[:page], :per_page => 30)
  end

  def show
    redirect_to admin_blogs_path
  end

  private

  def load_blog_templates
    @blog_templates = BlogTemplate.all
  end

end