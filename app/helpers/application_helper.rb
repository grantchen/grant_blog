module ApplicationHelper

  def admin_tabs_class(controller)
    params[:controller] == controller ? "active" : ""
  end
end
