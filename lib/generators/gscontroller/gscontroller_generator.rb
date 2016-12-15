#  use: rails g gscontroller ActPlan
class GscontrollerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def generate_controller_files
    puts("Custom controller generator by George Sgouros. Model: " + name)
    new_file_name = "app/controllers/"+model_names_controller+".rb"
    template "controller.rb", new_file_name
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
