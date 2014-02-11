module ApplicationHelper

  def admin_tabs_class(controller)
    params[:controller] == controller ? "active" : ""
  end

  def format_date_time(date_time)
    date_time.strftime("%Y-%m-%d %H:%M:%S")
  end

  def tabs_class(controller, cat_id=nil)
    (params[:controller] == controller &&
      ((params[:cat_id].nil? && cat_id.nil?) ||
        params[:cat_id] == cat_id.to_s)) ? "active" : ""
  end
end
