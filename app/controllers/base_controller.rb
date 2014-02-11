class BaseController < ApplicationController
  before_filter :load_blog_tabs


  private

  def load_blog_tabs
    @blog_tabs = BlogTab.all
  end
end
