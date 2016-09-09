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


# ---------------------------- measures ----------------
FactoryGirl.define do
  factory :measure do
    sequence(:code) {|n| "measure_#{n}"}
    description {Faker::Hacker.say_something_smart}
  end
end

@measure1 = FactoryGirl.create(:measure, axis: @axis1)
@measure2 = FactoryGirl.create(:measure, axis: @axis1)
@measure3 = FactoryGirl.create(:measure, axis: @axis3)
@measure4 = FactoryGirl.create(:measure, axis: @axis4)
@measure5 = FactoryGirl.create(:measure, axis: @axis5)

# ---------------- targets ----------------
FactoryGirl.define do
  factory :target do
    sequence(:code) {|n| "target_#{n}"}
    description {Faker::Hacker.say_something_smart}
  end
end

@target1 = FactoryGirl.create(:target, measure: @measure1)
@target2 = FactoryGirl.create(:target, measure: @measure2)
@target3 = FactoryGirl.create(:target, measure: @measure3)
@target4 = FactoryGirl.create(:target, measure: @measure4)
@target5 = FactoryGirl.create(:target, measure: @measure5)



# ---------------- act_plans ----------------
FactoryGirl.define do
  factory :act_plan do
    sequence(:code) {|n| "act_plan_#{n}"}
    description {Faker::Hacker.say_something_smart}
  end
end

@act_plan1 = FactoryGirl.create(:act_plan, target: @target1)
@act_plan2 = FactoryGirl.create(:act_plan, target: @target2)
@act_plan3 = FactoryGirl.create(:act_plan, target: @target3)
@act_plan4 = FactoryGirl.create(:act_plan, target: @target4)
@act_plan5 = FactoryGirl.create(:act_plan, target: @target5)


# ---------------- acts ----------------
FactoryGirl.define do
  factory :act do
    sequence(:code) {|n| "act_#{n}"}
    description {Faker::Hacker.say_something_smart}
  end
end

@act1 = FactoryGirl.create(:act, act_plan: @act_plan1)
@act2 = FactoryGirl.create(:act, act_plan: @act_plan2)
@act3 = FactoryGirl.create(:act, act_plan: @act_plan3)
@act4 = FactoryGirl.create(:act, act_plan: @act_plan4)
@act5 = FactoryGirl.create(:act, act_plan: @act_plan5)


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
end

@organisation1 = FactoryGirl.create(:organisation)
@organisation2 = FactoryGirl.create(:organisation)
@organisation3 = FactoryGirl.create(:organisation, is_this_my_organisation: true)
@organisation4 = FactoryGirl.create(:organisation)
@organisation5 = FactoryGirl.create(:organisation)
@organisation6 = FactoryGirl.create(:organisation)



# ---------------- users ----------------
FactoryGirl.define do
  factory :user do
      email {Faker::Internet.email}
  end
end

@user1 = FactoryGirl.create(:user,organisation:@organisation1,name:'Γιώργος',surname: 'Σγούρος'    ,normalized_name:'ΓΙΩΡΓΟΣ',normalized_surname:'ΣΓΟΥΡΟΣ'    ,manager:true ,admin:true)
@user2 = FactoryGirl.create(:user,organisation:@organisation1,name:'Νατάσα' ,surname: 'Λαμπρινίδου',normalized_name:'ΝΑΤΑΣΑ' ,normalized_surname:'ΛΑΜΠΡΙΝΙΔΟΥ',manager:false,admin:false)
@user3 = FactoryGirl.create(:user,organisation:@organisation1,name:'Θανάσης',surname: 'Ναλμπάντης' ,normalized_name:'ΘΑΝΑΣΗΣ',normalized_surname:'ΝΑΛΜΠΑΝΤΗΣ' ,manager:false,admin:false)
@user4 = FactoryGirl.create(:user,organisation:@organisation1,name:'Μαρίνα' ,surname: 'Κούρου'     ,normalized_name:'ΜΑΡΙΝΑ' ,normalized_surname:'ΚΟΥΡΟΥ'     ,manager:false,admin:false)
@user5 = FactoryGirl.create(:user,organisation:@organisation1,name:'Χρύσα'  ,surname: 'Γκουντέλα'  ,normalized_name:'ΧΡΥΣΑ'  ,normalized_surname:'ΓΚΟΥΝΤΕΛΑ'  ,manager:false,admin:false)


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
    budget_cents {rand(500000..80000000)}
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
    sequence(:normalized_title) {|n| "PROJECT_#{n}"}
  end
end

@p2013ΕΠ03180036=FactoryGirl.create(:project,
                                    code:                 '2013ΕΠ03180036',
                                    collective_decision:  @saep0318,
                                    accountable:          @user3,
                                    manager:              @user1,
                                    supervisor_body:      @organisation1,
                                    act:                  @act1 )
@p2013ΕΠ03180037=FactoryGirl.create(:project,
                                    code:                 '2013ΕΠ03180037',
                                    collective_decision:  @saep0318,
                                    accountable:          @user3,
                                    manager:              @user1,
                                    supervisor_body:      @organisation1,
                                    act:                  @act1 )
@p2013ΕΠ03180038=FactoryGirl.create(:project,
                                    code:                 '2013ΕΠ03180038',
                                    collective_decision:  @saep0318,
                                    accountable:           @user4,
                                    manager:              @user1,
                                    supervisor_body:      @organisation1,
                                    act:                  @act1 )
@p2013ΕΠ03180039=FactoryGirl.create(:project,
                                    code:                 '2013ΕΠ03180039',
                                    collective_decision:  @saep0318,
                                    accountable:          @user5,
                                    manager:              @user2,
                                    supervisor_body:      @organisation1,
                                    act:                  @act1 )
@p2013ΕΠ03180040=FactoryGirl.create(:project,
                                    code:                 '2013ΕΠ03180040',
                                    collective_decision:  @saep0318,
                                    accountable:          @user5,
                                    manager:              @user2,
                                    supervisor_body:      @organisation1,
                                    act:                  @act1 )
@p2013ΕΠ33120003=FactoryGirl.create(:project,
                                    code:                 '2013ΕΠ03180040',
                                    collective_decision:  @saep3312,
                                    accountable:          @user3,
                                    manager:              @user1,
                                    supervisor_body:      @organisation2,
                                    act:                  @act1 )
@p2013ΕΠ33120004=FactoryGirl.create(:project,
                                    code:                 '2013ΕΠ33120004',
                                    collective_decision:  @saep3312,
                                    accountable:          @user3,
                                    manager:              @user2,
                                    supervisor_body:      @organisation2,
                                    act:                  @act2 )
@p2013ΕΠ33120005=FactoryGirl.create(:project,
                                    code:                 '2013ΕΠ33120005',
                                    collective_decision:  @saep3312,
                                    accountable:          @user4,
                                    manager:              @user1,
                                    supervisor_body:      @organisation3,
                                    act:                  @act2 )

# ---------------- subprojects ----------------
FactoryGirl.define do
  factory :subproject do
    sequence(:code) {|n| "code_#{n}"}
    sequence(:title) {|n| "subproject_#{n}"}
    budget_cents {rand(5000000..10000000)}
    sequence(:description) {|n| "description_#{n}"}
    progress_code {rand(1..5)}
    prefecture_code {rand(1..5)}
    incorporation_date {rand(5).years.ago}
    incorporation_protocol {rand(1..3000)}
    phase_code {rand(1..5)}
    implementation_code {rand(1..5)}
    priority_code {rand(1..5)}
    comments {Faker::Hacker.say_something_smart}
    proposed_budget_cents {rand(5000000..10000000)}
    sequence(:normalized_title) {|n| "SUBPROJECT_#{n}"}
    # amendments
  end
end

@subproject1=FactoryGirl.create(  :subproject,
                                  supervisor_body:      @organisation1,
                                  implementation_body:  @organisation4,
                                  project:              @p2013ΕΠ03180036)
@subproject2=FactoryGirl.create(  :subproject,
                                  supervisor_body:      @organisation1,
                                  implementation_body:  @organisation4,
                                  project:              @p2013ΕΠ03180036)
@subproject3=FactoryGirl.create(  :subproject,
                                  supervisor_body:      @organisation2,
                                  implementation_body:  @organisation4,
                                  project:              @p2013ΕΠ03180037)
@subproject4=FactoryGirl.create(  :subproject,
                                  supervisor_body:      @organisation1,
                                  implementation_body:  @organisation4,
                                  project:              @p2013ΕΠ03180038)
@subproject5=FactoryGirl.create(  :subproject,
                                  supervisor_body:      @organisation1,
                                  implementation_body:  @organisation4,
                                  project:              @p2013ΕΠ33120003)


# ---------------- undertaking_certificates ----------------
FactoryGirl.define do
  factory :undertaking_certificate do
    protocol {rand(1..8000)}
    start_date {rand(4).years.ago}
    sequence(:title) {|n| "title_#{n}"}
    amount_cents {rand(100000..2000000)}
  end
end

@undertaking_certificate1 = FactoryGirl.create(:undertaking_certificate, subproject:@subproject1)
@undertaking_certificate2 = FactoryGirl.create(:undertaking_certificate, subproject:@subproject1)
@undertaking_certificate3 = FactoryGirl.create(:undertaking_certificate, subproject:@subproject1)
@undertaking_certificate4 = FactoryGirl.create(:undertaking_certificate, subproject:@subproject2)
@undertaking_certificate5 = FactoryGirl.create(:undertaking_certificate, subproject:@subproject2)

# ---------------- invoices ----------------
FactoryGirl.define do
  factory :invoice do
    sequence(:code) {|n| "invoice_#{n}"}
    description {Faker::Hacker.say_something_smart}
    date_of_issue {rand(4).years.ago}
    contractor_fiscal_code {rand(1000000..9999999)}
    contractor_name {Faker::Name.name}
    amount_cents {rand(100000..2000000)}
    payoff_deadline {Time.now + rand(5).months}
  end
end

@invoice1 = FactoryGirl.create(:invoice, undertaking_certificate: @undertaking_certificate1)
@invoice2 = FactoryGirl.create(:invoice, undertaking_certificate: @undertaking_certificate1)
@invoice3 = FactoryGirl.create(:invoice, undertaking_certificate: @undertaking_certificate1)
@invoice4 = FactoryGirl.create(:invoice, undertaking_certificate: @undertaking_certificate2)
@invoice5 = FactoryGirl.create(:invoice, undertaking_certificate: @undertaking_certificate3)


# ---------------- payments ----------------
FactoryGirl.define do
  factory :payment do
    sequence(:code) {|n| "payment_#{n}"}
    amount_cents {rand(100000..1500000)}
    transaction_date {rand(4).months.ago}
    payment_type_code {rand(1..5)}
  end
end

@payment1 = FactoryGirl.create(:payment, invoice:@invoice1)
@payment2 = FactoryGirl.create(:payment, invoice:@invoice1)
@payment3 = FactoryGirl.create(:payment, invoice:@invoice2)
@payment4 = FactoryGirl.create(:payment, invoice:@invoice3)
@payment5 = FactoryGirl.create(:payment, invoice:@invoice4)



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
    sequence(:normalized_name) {|n| "CONTRACTOR_#{n}"}
  end
end

@contractor1 = FactoryGirl.create(:contractor)
@contractor2 = FactoryGirl.create(:contractor)
@contractor3 = FactoryGirl.create(:contractor)
@contractor4 = FactoryGirl.create(:contractor)
@contractor5 = FactoryGirl.create(:contractor)

# ---------------- contracts ----------------
FactoryGirl.define do
  factory :contract do
    amount_cents {rand(1000000..10000000)}
    start_date {rand(1).years.ago}
  end
end

@contract1 = FactoryGirl.create(:contract, contractor: @contractor1, contract_parent: @p2013ΕΠ03180036)
@contract2 = FactoryGirl.create(:contract, contractor: @contractor1, contract_parent: @p2013ΕΠ03180037)
@contract3 = FactoryGirl.create(:contract, contractor: @contractor2, contract_parent: @subproject1)
@contract4 = FactoryGirl.create(:contract, contractor: @contractor3, contract_parent: @subproject2)
@contract5 = FactoryGirl.create(:contract, contractor: @contractor4, contract_parent: @subproject3)




# ---------------- contract_updates ----------------
FactoryGirl.define do
  factory :contract_update do
    sequence(:update_version) {|n| "contract_update_#{n}"}
    amount_cents {rand(1000000..10000000)}
    start_date {rand(1).years.ago}
    comments {Faker::Hacker.say_something_smart}
  end
end

@contract_update1 = FactoryGirl.create(:contract_update, contract: @contract1)
@contract_update2 = FactoryGirl.create(:contract_update, contract: @contract1)
@contract_update3 = FactoryGirl.create(:contract_update, contract: @contract2)
@contract_update4 = FactoryGirl.create(:contract_update, contract: @contract3)
@contract_update5 = FactoryGirl.create(:contract_update, contract: @contract4)



# ---------------- collective_decision_updates ----------------
FactoryGirl.define do
  factory :collective_decision_update do
    protocol {rand(1..8000)}
    start_date {rand(1).years.ago}
    description {Faker::Hacker.say_something_smart}
    comments {Faker::Hacker.say_something_smart}
  end
end

@collective_decision_update1 = FactoryGirl.create(:collective_decision_update, collective_decision: @saep0318)
@collective_decision_update2 = FactoryGirl.create(:collective_decision_update, collective_decision: @saep0318)
@collective_decision_update3 = FactoryGirl.create(:collective_decision_update, collective_decision: @saep0318)
@collective_decision_update4 = FactoryGirl.create(:collective_decision_update, collective_decision: @saep3312)
@collective_decision_update5 = FactoryGirl.create(:collective_decision_update, collective_decision: @saep3312)





# ---------------- allocations ----------------
FactoryGirl.define do
  factory :allocation do
    protocol {rand(1..8000)}
    start_date {rand(2).years.ago}
    amount_cents {rand(100000000..1000000000)}
  end
end

@allocation1 = FactoryGirl.create(:allocation, project: @p2013ΕΠ03180036)
@allocation2 = FactoryGirl.create(:allocation, project: @p2013ΕΠ03180036)
@allocation3 = FactoryGirl.create(:allocation, project: @p2013ΕΠ03180036)
@allocation4 = FactoryGirl.create(:allocation, project: @p2013ΕΠ03180037)
@allocation5 = FactoryGirl.create(:allocation, project: @p2013ΕΠ03180037)
@allocation6 = FactoryGirl.create(:allocation, project: @p2013ΕΠ03180038)
@allocation7 = FactoryGirl.create(:allocation, project: @p2013ΕΠ03180038)
@allocation8 = FactoryGirl.create(:allocation, project: @p2013ΕΠ33120003)



# ---------------- expence_forecasts ----------------
FactoryGirl.define do
  factory :expence_forecast do
      january_cents           {rand(100000000..500000000)}
      february_cents          {rand(100000000..500000000)}
      march_cents             {rand(100000000..500000000)}
      april_cents             {rand(100000000..500000000)}
      may_cents               {rand(100000000..500000000)}
      june_cents              {rand(100000000..500000000)}
      july_cents              {rand(100000000..500000000)}
      august_cents            {rand(100000000..500000000)}
      september_cents         {rand(100000000..500000000)}
      october_cents           {rand(100000000..500000000)}
      november_cents          {rand(100000000..500000000)}
      december_cents          {rand(100000000..500000000)}
      next_year_cents         {rand(100000000..500000000)}
      next_two_years_cents    {rand(100000000..500000000)}
      next_three_years_cents  {rand(100000000..500000000)}
      next_four_years_cents   {rand(100000000..500000000)}
      next_five_years_cents   {rand(100000000..500000000)}
  end
end

@expence_forecast1 = FactoryGirl.create(:expence_forecast, subproject: @subproject1)
@expence_forecast2 = FactoryGirl.create(:expence_forecast, subproject: @subproject2)
@expence_forecast3 = FactoryGirl.create(:expence_forecast, subproject: @subproject3)
@expence_forecast4 = FactoryGirl.create(:expence_forecast, subproject: @subproject4)
@expence_forecast5 = FactoryGirl.create(:expence_forecast, subproject: @subproject5)



# ---------------- schedules ----------------
FactoryGirl.define do
  factory :schedule do
  end
end

@schedule1=FactoryGirl.create(:schedule,  schedule_parent: @p2013ΕΠ03180036)
@schedule2=FactoryGirl.create(:schedule,  schedule_parent: @p2013ΕΠ03180037)
@schedule3=FactoryGirl.create(:schedule,  schedule_parent: @p2013ΕΠ03180038)
@schedule4=FactoryGirl.create(:schedule,  schedule_parent: @p2013ΕΠ33120003)
@schedule5=FactoryGirl.create(:schedule,  schedule_parent: @subproject1)
@schedule6=FactoryGirl.create(:schedule,  schedule_parent: @subproject2)
@schedule7=FactoryGirl.create(:schedule,  schedule_parent: @subproject3)
@schedule8=FactoryGirl.create(:schedule,  schedule_parent: @subproject4)
@schedule9=FactoryGirl.create(:schedule,  schedule_parent: @subproject5)


# ---------------- schedule_actions ----------------
FactoryGirl.define do
  factory :schedule_action do
    sequence(:description) {|n| "schedule_action_#{n}"}
    start_date {rand(1).years.ago}
    end_date {rand(1).years.ago}
  end
end

@schedule_action1=FactoryGirl.create(:schedule_action, schedule: @schedule1)
@schedule_action2=FactoryGirl.create(:schedule_action, schedule: @schedule1)
@schedule_action3=FactoryGirl.create(:schedule_action, schedule: @schedule1)
@schedule_action4=FactoryGirl.create(:schedule_action, schedule: @schedule2)
@schedule_action5=FactoryGirl.create(:schedule_action, schedule: @schedule3)
@schedule_action6=FactoryGirl.create(:schedule_action, schedule: @schedule3)
@schedule_action7=FactoryGirl.create(:schedule_action, schedule: @schedule4)
@schedule_action8=FactoryGirl.create(:schedule_action, schedule: @schedule5)
@schedule_action9=FactoryGirl.create(:schedule_action, schedule: @schedule6)
@schedule_action10=FactoryGirl.create(:schedule_action, schedule: @schedule7)
