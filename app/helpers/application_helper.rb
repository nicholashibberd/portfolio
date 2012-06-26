module ApplicationHelper
  def age
    today = Date.today
    today.year - 1982 + (today.month - 7 + ((today.day - 12) < 0 ? -1 : 0) < 0 ? -1 : 0)
  end
end
