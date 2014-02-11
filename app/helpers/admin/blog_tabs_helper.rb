module Admin::BlogTabsHelper
  def show_cat_type(cat_type)
    cat_type == "list" ? "文章列表" : "单篇文章"
  end
end