class MyControllerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  argument :hello, :type => :string   #e.g. ActPlan

  def generate_controller_files
    template "controller.rb", "app/controllers/"+controller_name+".rb"
  end


  private

  def model_name
    hello
  end

  def model_class
    model_name.underscore
  end

  def model_name_plural
    model_name.pluralize
  end

  def controller_name
    model_name_plural+"_controller"
  end

  def controller_class
    model_class.pluralize+"Controller"
  end




end
