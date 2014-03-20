module ApplicationHelper

  def locale_switch  
    I18n.locale == :ru ? 'en' : 'ru'
  end


end
