= simple_form_for(<%=model_name%>) do |f|
  - if <%=model_name%>.errors.any?
    #error_explanation
      - <%=model_name%>.errors.full_messages.each do |message|
        .alert.alert-danger{:role => 'alert'}
          %span.glyphicon.glyphicon-exclamation-sign
          =message

  = f.input :code
  = f.input :description, as: :text
  = f.input :parent_id, collection: @parents_for_select_box
  = f.button :submit, class:'btn btn-success'
  = link_to t(:cancel), 'javascript:history.go(-1);', class:'btn btn-danger pull-right'
