module Admin::BlogTabsHelper
  def show_tab_type(tab_type)
    tab_type == "list" ? "文章列表" : "单篇文章"
  end
end