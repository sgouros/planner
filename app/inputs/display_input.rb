class DisplayInput < SimpleForm::Inputs::Base
  # This method usually returns input's html like <input ... />
  # but in this case it returns just a value of the attribute.
  def input(wrapper_options)
    merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)

    "hello #{@builder.text_field(attribute_name, merged_input_options)}".html_safe
  end


end
