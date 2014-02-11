class BaseController < ApplicationController
  before_filter :load_blog_cats
  layout "blogs"

  private

  def load_blog_cats
    @blog_cats = BlogCat.all
  end
end
