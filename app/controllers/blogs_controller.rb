class BlogsController < BaseController
  inherit_resources

  def index
    if params[:cat_id]
      @blogs = Blog.where(blog_cat_id: params[:cat_id]).paginate(:page => params[:page], :per_page => 30)
    else
      @blogs = Blog.paginate(:page => params[:page], :per_page => 30)
    end
  end
end