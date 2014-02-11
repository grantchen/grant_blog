class BlogsController < BaseController
  inherit_resources

  def index
    if params[:tab_id]
      @blogs = Blog.where(blog_tab_id: params[:tab_id]).paginate(:page => params[:page], :per_page => 30)
    else
      @blogs = Blog.paginate(:page => params[:page], :per_page => 30)
    end
  end
end