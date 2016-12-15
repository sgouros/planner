
%h2.sub-header= t(:<%=model_names%>)
= paginate @<%=model_names%>
.table-responsive
  %table.table.table-striped
    %thead
      %tr
        %th= t('<%=model_name%>.code')
        %th= t('<%=model_name%>.description')
        %th= t('<%=model_name%>.target')
    %tbody
      - @<%=model_names%>.each do |<%=model_name%>|
        %tr
          %td= link_to <%=model_name%>.code, <%=model_name%>
          %td= <%=model_name%>.description
          %td= link_to <%=model_name%>.target_code, target_path(<%=model_name%>.target_id), class: 'tooltips', title: <%=model_name%>.target_title
          %td= link_to "", edit_<%=model_name%>_path(<%=model_name%>), class: "tooltips glyphicon glyphicon-pencil", title: t(:edit)
          %td= link_to "", <%=model_name%>, method: :delete, data: { confirm: t(:<%=model_name%>_delete_confirmation) }, class: "tooltips glyphicon glyphicon-trash", title: t(:delete)
  = paginate @<%=model_names%>

= link_to t(:new_<%=model_name%>), new_<%=model_name%>_path, class:"btn btn-primary"
