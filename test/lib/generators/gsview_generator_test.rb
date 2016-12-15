require 'test_helper'
require 'generators/gsview/gsview_generator'

class GsviewGeneratorTest < Rails::Generators::TestCase
  tests GsviewGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
