class BaseController < ApplicationController
  before_filter :load_blog_cats


  private

  def load_blog_cats
    @blog_cats = BlogCat.all
  end
end
