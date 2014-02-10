class HomeController < ApplicationController
  def index
    @blogs = Blog.limit(8)
  end
end