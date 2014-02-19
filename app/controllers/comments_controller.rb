class CommentsController < ApplicationController

  def permitted_params
    params.require(:comment).permit(:user_name, :email, :blog_id, :comment)
  end

  def create
    Comment.create(permitted_params)
    blog = Blog.find(params[:comment][:blog_id])
    blog.comment_count = blog.comment_count + 1
    blog.save
    redirect_to blog_path(blog)
  end
end