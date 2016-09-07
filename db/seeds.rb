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

require 'faker'


# ---------------- collective_decisions ----------------
FactoryGirl.define do
  factory :collective_decision do
    description {Faker::Hacker.say_something_smart}
    year '2016'
  end
end

@sae031   = FactoryGirl.create(:collective_decision, code:'ΣΑΕ031')
@saep031  = FactoryGirl.create(:collective_decision, code:'ΣΑΕΠ031')
@saep0311 = FactoryGirl.create(:collective_decision, code:'ΣΑΕΠ0311')
@saep0312 = FactoryGirl.create(:collective_decision, code:'ΣΑΕΠ0312')
@saep0318 = FactoryGirl.create(:collective_decision, code:'ΣΑΕΠ0318')
@saep531  = FactoryGirl.create(:collective_decision, code:'ΣΑΕΠ531')
@saep831  = FactoryGirl.create(:collective_decision, code:'ΣΑΕΠ831')
@saep3312 = FactoryGirl.create(:collective_decision, code:'ΣΑΕΠ3312')
@saep3318 = FactoryGirl.create(:collective_decision, code:'ΣΑΕΠ3318')
@samp031  = FactoryGirl.create(:collective_decision, code:'ΣΑΜΠ031')
@sana0088 = FactoryGirl.create(:collective_decision, code:'ΣΑΝΑ0088')
@sana0108 = FactoryGirl.create(:collective_decision, code:'ΣΑΝΑ0108')
@sana0208 = FactoryGirl.create(:collective_decision, code:'ΣΑΝΑ0208')
@sana0368 = FactoryGirl.create(:collective_decision, code:'ΣΑΝΑ0368')
@sana0418 = FactoryGirl.create(:collective_decision, code:'ΣΑΝΑ0418')


# ---------------- projects ----------------
FactoryGirl.define do
  factory :project do
    sequence(:title) {|n| "project_#{n}"}
    iis_code {rand(4000..8000)}
    prefecture_code {rand(1..5)}
    incorporation_protocol {rand(1..3000)}
    incorporation_date {rand(5).years.ago}
    phase_code {rand(1..5)}
    priority_code {rand(1..5)}
    classification_code {rand(1..5)}
    has_multiple_collective_decisions true
    credit_first_quarter_cents {rand(10000..50000)}
    credit_second_quarter_cents {rand(10000..50000)}
    credit_third_quarter_cents {rand(10000..50000)}
    credit_fourth_quarter_cents {rand(10000..50000)}
    payments_until_last_year_according_to_sae_cents{rand(10000..50000)}
    sequence(:iban) {|n| "GR013210321056070880900000#{n}"}
    expense_code {rand(1..5)}
    ppi_payments_cents {rand(10000..50000)}
    credit_limit_cents {rand(500000..900000)}
    comments {Faker::Hacker.say_something_smart}
#    supervisor_body_id {rand(1..5)}
#    act_id {rand(1..5)}
#    collective_decision_id {rand(1..5)}
    budget_cents {rand(50000..800000)}
    budget_history "this is budget history"
    created_at {rand(2).years.ago}
    updated_at {rand(2).years.ago}
    proposed_credit_1_cents {rand(10000..50000)}
    proposed_credit_2_cents {rand(10000..50000)}
    proposed_credit_3_cents {rand(10000..50000)}
    proposed_credit_4_cents {rand(10000..50000)}
    proposed_credit_5_cents {rand(10000..50000)}
    proposed_credit_year_1 "2016"
    proposed_credit_year_2 "2017"
    proposed_credit_year_3 "2018"
    proposed_credit_year_4 "2019"
    proposed_credit_year_5 "2020"
#    user_id {rand(1..5)}
#    manager_id {rand(1..5)}
    sequence(:normalized_title) {|n| "ΕΡΓΟ #{n}"}
  end
end

@p2013ΕΠ03180036=FactoryGirl.create(:project, code:'2013ΕΠ03180036')
@p2013ΕΠ03180037=FactoryGirl.create(:project, code:'2013ΕΠ03180037')
@p2013ΕΠ03180038=FactoryGirl.create(:project, code:'2013ΕΠ03180038')
@p2013ΕΠ03180039=FactoryGirl.create(:project, code:'2013ΕΠ03180039')
@p2013ΕΠ03180040=FactoryGirl.create(:project, code:'2013ΕΠ03180040')
@p2013ΕΠ33120003=FactoryGirl.create(:project, code:'2013ΕΠ33120003')
@p2013ΕΠ33120004=FactoryGirl.create(:project, code:'2013ΕΠ33120004')
@p2013ΕΠ33120005=FactoryGirl.create(:project, code:'2013ΕΠ33120005')

@saep3312.projects << @p2013ΕΠ33120003
@saep3312.projects << @p2013ΕΠ33120004
@saep3312.projects << @p2013ΕΠ33120005
@saep0318.projects << @p2013ΕΠ03180036
@saep0318.projects << @p2013ΕΠ03180037
@saep0318.projects << @p2013ΕΠ03180038
@saep0318.projects << @p2013ΕΠ03180039
@saep0318.projects << @p2013ΕΠ03180040






# ---------------- organisations ----------------
FactoryGirl.define do
  factory :organisation do
    sequence(:code) {|n| "organisation_#{n}"}
    name {Faker::Company.name}
    address {Faker::Address.street_address + ", " + Faker::Address.zip + ", " + Faker::Address.city}
    phone {Faker::PhoneNumber.phone_number}
    fax {Faker::PhoneNumber.phone_number}
    contact_person {Faker::Name.name}
    email {Faker::Internet.email}
    is_this_my_organisation false
  end


@organisation1 = FactoryGirl.create(:organisation)
@organisation2 = FactoryGirl.create(:organisation)
@organisation3 = FactoryGirl.create(:organisation, is_this_my_organisation: true)
@organisation4 = FactoryGirl.create(:organisation)
@organisation5 = FactoryGirl.create(:organisation)
@organisation6 = FactoryGirl.create(:organisation)

# ---------------- axes ----------------
FactoryGirl.define do
  factory :axis do
    sequence(:code) {|n| "axis_#{n}"}
    description {Faker::Hacker.say_something_smart}
  end
end

@axis1 = FactoryGirl.create(:axis)
@axis2 = FactoryGirl.create(:axis)
@axis3 = FactoryGirl.create(:axis)
@axis4 = FactoryGirl.create(:axis)
@axis5 = FactoryGirl.create(:axis)

# ---------------- measures ----------------
FactoryGirl.define do
  factory :measure do
    sequence(:code) {|n| "measure_#{n}"}
    description {Faker::Hacker.say_something_smart}
  end
end

@measure1 = FactoryGirl.create(:measure)
@measure2 = FactoryGirl.create(:measure)
@measure3 = FactoryGirl.create(:measure)
@measure4 = FactoryGirl.create(:measure)
@measure5 = FactoryGirl.create(:measure)

@axis1.measures << @measure1
@axis1.measures << @measure2
@axis2.measures << @measure3
@axis3.measures << @measure4
@axis4.measures << @measure5


# ---------------- targets ----------------
FactoryGirl.define do
  factory :target do
    sequence(:code) {|n| "target_#{n}"}
    description {Faker::Hacker.say_something_smart}
  end
end

@target1 = FactoryGirl.create(:target)
@target2 = FactoryGirl.create(:target)
@target3 = FactoryGirl.create(:target)
@target4 = FactoryGirl.create(:target)
@target5 = FactoryGirl.create(:target)

@measure1.targets << @target1
@measure2.targets << @target2
@measure3.targets << @target3
@measure3.targets << @target4
@measure5.targets << @target5


# ---------------- action_plans ----------------
FactoryGirl.define do
  factory :action_plan do
    sequence(:code) {|n| "action_plan_#{n}"}
    description {Faker::Hacker.say_something_smart}
  end
end

@action_plan1 = FactoryGirl.create(:action_plan)
@action_plan2 = FactoryGirl.create(:action_plan)
@action_plan3 = FactoryGirl.create(:action_plan)
@action_plan4 = FactoryGirl.create(:action_plan)
@action_plan5 = FactoryGirl.create(:action_plan)

@target1.action_plans << @action_plan1
@target2.action_plans << @action_plan2
@target3.action_plans << @action_plan3
@target4.action_plans << @action_plan4
@target5.action_plans << @action_plan5

# ---------------- acts ----------------
FactoryGirl.define do
  factory :act do
    sequence(:code) {|n| "act_#{n}"}
    description {Faker::Hacker.say_something_smart}
  end
end

@act1 = FactoryGirl.create(:act)
@act2 = FactoryGirl.create(:act)
@act3 = FactoryGirl.create(:act)
@act4 = FactoryGirl.create(:act)
@act5 = FactoryGirl.create(:act)

@action_plan1.acts << @act1
@action_plan1.acts << @act2
@action_plan2.acts << @act3
@action_plan2.acts << @act4
@action_plan5.acts << @act5

@act1.projects << @p2013ΕΠ03180036
@act1.projects << @p2013ΕΠ03180037
@act2.projects << @p2013ΕΠ03180038
@act3.projects << @p2013ΕΠ03180039
@act4.projects << @p2013ΕΠ03180040
@act4.projects << @p2013ΕΠ33120004
@act5.projects << @p2013ΕΠ33120005


# ---------------- undertaking_certificates ----------------
FactoryGirl.define do
  factory :undertaking_certificate do
    protocol {rand(1..8000)+"//"+rand(1..3000)}
    start_date {rand(4).years.ago}
    sequence(:title) {|n| "title_#{n}"}
    amount {rand(1000..20000}
  end
end

@undertaking_certificate1 = FactoryGirl.create(:undertaking_certificate)
@undertaking_certificate2 = FactoryGirl.create(:undertaking_certificate)
@undertaking_certificate3 = FactoryGirl.create(:undertaking_certificate)
@undertaking_certificate4 = FactoryGirl.create(:undertaking_certificate)
@undertaking_certificate5 = FactoryGirl.create(:undertaking_certificate)


# ---------------- invoices ----------------
FactoryGirl.define do
  factory :invoice do
    sequence(:code) {|n| "invoice_#{n}"}
    description {Faker::Hacker.say_something_smart}
    date_of_issue {rand(4).years.ago}
    contractor_fiscal_code {rand(1000000..9999999)}
    contractor_name {Faker::Name.name}
    amount {rand(1000..20000}
    payoff_deadline {Time.now + rand(5).months}
  end
end

@invoice1 = FactoryGirl.create(:invoice)
@invoice2 = FactoryGirl.create(:invoice)
@invoice3 = FactoryGirl.create(:invoice)
@invoice4 = FactoryGirl.create(:invoice)
@invoice5 = FactoryGirl.create(:invoice)

@undertaking_certificate1.invoices << @invoice1
@undertaking_certificate2.invoices << @invoice2
@undertaking_certificate3.invoices << @invoice3
@undertaking_certificate4.invoices << @invoice4
@undertaking_certificate5.invoices << @invoice5

# ---------------- payments ----------------
FactoryGirl.define do
  factory :payment do
    sequence(:code) {|n| "payment_#{n}"}
    amount {rand(1000..15000}
    transaction_date {rand(4).months.ago}
    payment_type_code {rand(1..5)}
  end
end

@payment1 = FactoryGirl.create(:payment)
@payment2 = FactoryGirl.create(:payment)
@payment3 = FactoryGirl.create(:payment)
@payment4 = FactoryGirl.create(:payment)
@payment5 = FactoryGirl.create(:payment)

@invoice1.payments << @payment1
@invoice2.payments << @payment2
@invoice3.payments << @payment3
@invoice4.payments << @payment4
@invoice5.payments << @payment5


# ---------------- collective_decision_updates ----------------
FactoryGirl.define do
  factory :collective_decision_update do
    protocol {rand(1..8000)+"//"+rand(1..3000)}
    start_date {rand(1).years.ago}
    description {Faker::Hacker.say_something_smart}
    comments {Faker::Hacker.say_something_smart}
  end
end

@collective_decision_update1 = FactoryGirl.create(:collective_decision_update)
@collective_decision_update2 = FactoryGirl.create(:collective_decision_update)
@collective_decision_update3 = FactoryGirl.create(:collective_decision_update)
@collective_decision_update4 = FactoryGirl.create(:collective_decision_update)
@collective_decision_update5 = FactoryGirl.create(:collective_decision_update)

@collective_decision1.collective_decision_updates << @collective_decision_update1
@collective_decision2.collective_decision_updates << @collective_decision_update2
@collective_decision3.collective_decision_updates << @collective_decision_update3
@collective_decision4.collective_decision_updates << @collective_decision_update4
@collective_decision5.collective_decision_updates << @collective_decision_update5

# ---------------- allocations ----------------
FactoryGirl.define do
  factory :allocation do
    protocol {rand(1..8000)+"//"+rand(1..3000)}
    start_date {rand(2).years.ago}
    amount {rand(10000..100000}
  end
end

@allocation1 = FactoryGirl.create(:allocation)
@allocation2 = FactoryGirl.create(:allocation)
@allocation3 = FactoryGirl.create(:allocation)
@allocation4 = FactoryGirl.create(:allocation)
@allocation5 = FactoryGirl.create(:allocation)
@allocation6 = FactoryGirl.create(:allocation)
@allocation7 = FactoryGirl.create(:allocation)
@allocation8 = FactoryGirl.create(:allocation)

@p2013ΕΠ03180036.allocations << @allocation1
@p2013ΕΠ03180037.allocations << @allocation2
@p2013ΕΠ03180038.allocations << @allocation3
@p2013ΕΠ03180039.allocations << @allocation4
@p2013ΕΠ03180040.allocations << @allocation5
@p2013ΕΠ33120003.allocations << @allocation6
@p2013ΕΠ33120004.allocations << @allocation7
@p2013ΕΠ33120005.allocations << @allocation8

# ---------------- contracts ----------------
FactoryGirl.define do
  factory :contract do
    amount_cents {rand(1000000..10000000}
    start_date {rand(1).years.ago}
  end
end

@contract1 = FactoryGirl.create(:contract)
@contract2 = FactoryGirl.create(:contract)
@contract3 = FactoryGirl.create(:contract)
@contract4 = FactoryGirl.create(:contract)
@contract5 = FactoryGirl.create(:contract)

@contractor1.contracts << @contract1
@contractor1.contracts << @contract2
@contractor3.contracts << @contract3
@contractor4.contracts << @contract4
@contractor5.contracts << @contract5

@subproject1.contracts << @contract1
@subproject1.contracts << @contract2
@subproject3.contracts << @contract3
@subproject4.contracts << @contract4
@subproject5.contracts << @contract5

# ---------------- contract_updates ----------------
FactoryGirl.define do
  factory :contract_update do
    sequence(:update_version) {|n| "version_#{n}"}
    amount {rand(10000..100000}
    start_date {rand(1).years.ago}
    comments {Faker::Hacker.say_something_smart}
  end
end

@contract_update1 = FactoryGirl.create(:contract_update)
@contract_update2 = FactoryGirl.create(:contract_update)
@contract_update3 = FactoryGirl.create(:contract_update)
@contract_update4 = FactoryGirl.create(:contract_update)
@contract_update5 = FactoryGirl.create(:contract_update)

@contract1.contract_updates << @contract_update1
@contract1.contract_updates << @contract_update2
@contract1.contract_updates << @contract_update3
@contract2.contract_updates << @contract_update4
@contract3.contract_updates << @contract_update5

# ---------------- contractors ----------------
FactoryGirl.define do
  factory :contractor do
    sequence(:name) {|n| "contractor_#{n}"}
    fiscal_code {Faker::Code.ean}
    tax_department 'Κομοτηνής'
    address {Faker::Address.street_address + ", " + Faker::Address.zip + ", " + Faker::Address.city}
    phone {Faker::PhoneNumber.phone_number}
    fax {Faker::PhoneNumber.phone_number}
    contact_person {Faker::Name.name}
    email {Faker::Internet.email}
    comments {Faker::Hacker.say_something_smart}
  end
end

@contractor1 = FactoryGirl.create(:contractor)
@contractor2 = FactoryGirl.create(:contractor)
@contractor3 = FactoryGirl.create(:contractor)
@contractor4 = FactoryGirl.create(:contractor)
@contractor5 = FactoryGirl.create(:contractor)

@contract1.contractors << @contractor1
@contract1.contractors << @contractor2
@contract1.contractors << @contractor3
@contract2.contractors << @contractor4
@contract3.contractors << @contractor5

# ---------------- subprojects ----------------
FactoryGirl.define do
  factory :subproject do
    sequence(:code) {|n| "code_#{n}"}
    sequence(:title) {|n| "project_#{n}"}
    budget {rand(50000..100000)}
    sequence(:description) {|n| "description_#{n}"}
    progress_code {rand(1..5)}
    prefecture_code {rand(1..5)}
    incorporation_date {rand(5).years.ago}
    incorporation_protocol {rand(1..3000)}
# amendments
    phase_code {rand(1..5)}
    implementation_code {rand(1..5)}
    priority_code {rand(1..5)}
    comments {Faker::Hacker.say_something_smart}
    proposed_budget {rand(50000..100000)}
  end
end

@subproject1=FactoryGirl.create(:subproject)
@subproject2=FactoryGirl.create(:subproject)
@subproject3=FactoryGirl.create(:subproject)
@subproject4=FactoryGirl.create(:subproject)
@subproject5=FactoryGirl.create(:subproject)
@subproject6=FactoryGirl.create(:subproject)
@subproject7=FactoryGirl.create(:subproject)
@subproject8=FactoryGirl.create(:subproject)

@subproject1.undertaking_certificates << @undertaking_certificate1
@subproject2.undertaking_certificates << @undertaking_certificate2
@subproject3.undertaking_certificates << @undertaking_certificate3
@subproject4.undertaking_certificates << @undertaking_certificate4
@subproject5.undertaking_certificates << @undertaking_certificate5

@p2013ΕΠ03180036.subprojects << @subproject1
@p2013ΕΠ03180036.subprojects << @subproject2
@p2013ΕΠ03180036.subprojects << @subproject3
@p2013ΕΠ03180039.subprojects << @subproject4
@p2013ΕΠ03180040.subprojects << @subproject5
@p2013ΕΠ33120003.subprojects << @subproject6
@p2013ΕΠ33120003.subprojects << @subproject7
@p2013ΕΠ33120005.subprojects << @subproject8



# ---------------- schedule_actions ----------------
FactoryGirl.define do
  factory :schedule_action do
    sequence(:description) {|n| "schedule_action_#{n}"}
    start_date {rand(1).years.ago}
    end_date {rand(1).years.ago}
  end
end

@schedule_action1=FactoryGirl.create(:schedule_action)
@schedule_action2=FactoryGirl.create(:schedule_action)
@schedule_action3=FactoryGirl.create(:schedule_action)
@schedule_action4=FactoryGirl.create(:schedule_action)
@schedule_action5=FactoryGirl.create(:schedule_action)

# ---------------- schedules ----------------
FactoryGirl.define do
  factory :schedule do
  end
end

@schedule1=FactoryGirl.create(:schedule)
@schedule2=FactoryGirl.create(:schedule)
@schedule3=FactoryGirl.create(:schedule)
@schedule4=FactoryGirl.create(:schedule)
@schedule5=FactoryGirl.create(:schedule)
@schedule6=FactoryGirl.create(:schedule)
@schedule7=FactoryGirl.create(:schedule)
@schedule8=FactoryGirl.create(:schedule)
@schedule9=FactoryGirl.create(:schedule)
@schedule10=FactoryGirl.create(:schedule)

@schedule1.schedule_actions << @schedule_action1
@schedule1.schedule_actions << @schedule_action2
@schedule1.schedule_actions << @schedule_action3
@schedule1.schedule_actions << @schedule_action4
@schedule1.schedule_actions << @schedule_action5

@project1.schedule << @schedule1
@project2.schedule << @schedule2
@project3.schedule << @schedule3
@project4.schedule << @schedule4
@project5.schedule << @schedule5

@subproject1.schedule << @schedule6
@subproject2.schedule << @schedule7
@subproject3.schedule << @schedule8
@subproject5.schedule << @schedule9
@subproject4.schedule << @schedule10


# ---------------- users ----------------
FactoryGirl.define do
  factory :user do
      email {Faker::Internet.email}
  end
end

@user1 = FactoryGirl.create(:user, :name 'Γιώργος', surname 'Σγούρος'     , :normalized_name 'ΓΙΩΡΓΟΣ', :normalized_title 'ΣΓΟΥΡΟΣ'     , :manager true , :admin true)
@user2 = FactoryGirl.create(:user, :name 'Νατάσα' , surname 'Λαμπρινίδου' , :normalized_name 'ΝΑΤΑΣΑ' , :normalized_title 'ΛΑΜΠΡΙΝΙΔΟΥ' , :manager false, :admin false)

@organisation1.users << @user1
@organisation2.users << @user2

# ---------------- expence_forecasts ----------------
FactoryGirl.define do
  factory :expence_forecast do
      january {rand(10000..50000)}
      february {rand(10000..50000)}
      march {rand(10000..50000)}
      april {rand(10000..50000)}
      may {rand(10000..50000)}
      june {rand(10000..50000)}
      july {rand(10000..50000)}
      august {rand(10000..50000)}
      september {rand(10000..50000)}
      october {rand(10000..50000)}
      november {rand(10000..50000)}
      december {rand(10000..50000)}
      next_year {rand(10000..50000)}
      next_two_years {rand(10000..50000)}
      next_three_years {rand(10000..50000)}
      next_four_years {rand(10000..50000)}
      next_five_years {rand(10000..50000)}
  end
end

@expence_forecast1 = FactoryGirl.create(:expence_forecast)
@expence_forecast2 = FactoryGirl.create(:expence_forecast)

@subproject1.expence_forecasts << @expence_forecast1
@subproject2.expence_forecasts << @expence_forecast2
