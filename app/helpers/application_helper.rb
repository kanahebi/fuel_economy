module ApplicationHelper
  def simple_time(time)
    return '' if time.blank?
    time.strftime("%Y/%m/%d %H:%M")
  end
end
