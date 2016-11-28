require 'test_helper'
require 'generators/gs_controller/gs_controller_generator'

class GsControllerGeneratorTest < Rails::Generators::TestCase
  tests GsControllerGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
