require 'test_helper'
require 'generators/contr/contr_generator'

class ContrGeneratorTest < Rails::Generators::TestCase
  tests ContrGenerator
  destination Rails.root.join('tmp/generators')
  setup :prepare_destination

  # test "generator runs without errors" do
  #   assert_nothing_raised do
  #     run_generator ["arguments"]
  #   end
  # end
end
