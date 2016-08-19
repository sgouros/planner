# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# @mycd = CollectiveDecision.create(
# id: '1',
# code: 'ΣΑΕΠ031',
# description:'περιγραφή της ΣΑΕΠ031' )

FactoryGirl.define do
  factory :collective_decision do
    id "1"
    code  "my code"
    description 'my description'
  end
end


FactoryGirl.create(:collective_decision, code: "ΣΑΕΠ031")
# , :id => 1, :code => "Lite", :description => 'hello')
