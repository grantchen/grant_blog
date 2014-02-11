class BlogsController < BaseController
  def index
    if params[:cat_id]
      @blogs = Blog.where(blog_cat_id: params[:cat_id]).paginate(:page => params[:page], :per_page => 30)
    else
      @blogs = Blog.paginate(:page => params[:page], :per_page => 30)
    end
  end

  def show
    @blog = Blog.find(params[:id])
    @blog.view_count = @blog.view_count + 1
    @blog.save
  end
end