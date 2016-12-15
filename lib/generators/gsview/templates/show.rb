.page-header.h2= t(:show_<%=model_name%>)

= simple_form_for(@<%=model_name%>) do |f|
  = f.input :code, disabled: true
  = f.input :description, as: :text, disabled: true
  = f.input :target_id, as: :string, input_html: { value: @<%=model_name%>.target_full_title }, disabled: true

= link_to t(:edit), edit_<%=model_name%>_path(@<%=model_name%>), class:"btn btn-primary"
= link_to t(:back), <%=model_names%>_path, class:"btn btn-danger pull-right"
