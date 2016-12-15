class GsviewGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)


  def generate_view_files
    puts("Custom view generator by George Sgouros. Model: " + name)

    form_file   = "app/views/" + model_names + "/_form.html.haml"
    edit_file   = "app/views/" + model_names + "/edit.html.haml"
    index_file  = "app/views/" + model_names + "/index.html.haml"
    new_file    = "app/views/" + model_names + "/new.html.haml"
    show_file   = "app/views/" + model_names + "/show.html.haml"

    template "form.rb",   form_file
    template "edit.rb",   edit_file
    template "index.rb",  index_file
    template "new.rb",    new_file
    template "show.rb",   show_file

  end

  private

    def modelName
      name
    end

    def model_name
      modelName.underscore
    end

    def model_names
      model_name.pluralize
    end

    def modelNames
      modelName.pluralize
    end

    def controllerName
      modelNames+"Controller"
    end

    def model_names_controller
      model_names+"_controller"
    end


end
