# coding: utf-8
class DiscussionDecorator < ContentDecorator
  delegate_all

  def author
    case source.author
      when Admin then "<span class='admin_name'>#{source.author.name}</span>".html_safe
      when User then source.author.name
    else "неизвестный"
    end
  end

  def textile_html(lite_mode = false)
    super(lite_mode, true)
  end

end