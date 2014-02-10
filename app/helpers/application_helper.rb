module ApplicationHelper

  def admin_tabs_class(controller)
    params[:controller] == controller ? "active" : ""
  end

  def format_date_time(date_time)
    date_time.strftime("%Y-%m-%d %H:%M:%S")
  end

  def tabs_class(controller)
    params[:controller] == controller ? "active" : ""
  end
end
