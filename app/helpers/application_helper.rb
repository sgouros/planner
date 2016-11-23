module ApplicationHelper
  include ActionView::Helpers::NumberHelper
  require "unicode_utils/upcase"
  # automated activation of lins in bootstrap navbar
  # thanks to Wawa Loo http://stackoverflow.com/questions/17481812/dynamically-add-active-class-to-bootstrap-li-in-rails
  def link_to_auto_active(body, url, html_options = {})
    active = "active" if current_page?(url)
    content_tag :li, class: active do
      link_to body, url, html_options
    end
  end



  def normalize_string(str) #κάνει ένα string στα κεφαλαία αφαιρώντας όλους τους τόνους. Χρησιμοποιείται στο database search
    map = { 'ά' => 'α',
            'έ' => 'ε',
            'ό' => 'ο',
            'ί' => 'ι',
            'ύ' => 'υ',
            'ή' => 'η',
            'ώ' => 'ω',
            'ϊ' => 'ι',
            'ϋ' => 'υ',
            'ΐ' => 'ι',
            'ΰ' => 'υ',
            'Ά' => 'α',
            'Έ' => 'ε',
            'Ό' => 'ο',
            'Ί' => 'ι',
            'Ύ' => 'υ',
            'Ή' => 'η',
            'Ώ' => 'ω',
            'Ϊ' => 'ι',
            'Ϋ' => 'υ'  }
    reg = Regexp.new(map.keys.map { |x| Regexp.escape(x) }.join('|'))
    UnicodeUtils.upcase(str.gsub(reg, map))
  end



end
