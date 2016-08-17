module ApplicationHelper

  # automated activation of lins in bootstrap navbar
  # thanks to Wawa Loo http://stackoverflow.com/questions/17481812/dynamically-add-active-class-to-bootstrap-li-in-rails
  def link_to_auto_active(body, url, html_options = {})
    active = "active" if current_page?(url)
    content_tag :li, class: active do
      link_to body, url, html_options
    end
  end


end
