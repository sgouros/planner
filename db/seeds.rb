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


FactoryGirl.define do
  factory :project do
    sequence(:title) {|n| "Έργο_#{n}"}
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
    supervisor_body_id {rand(1..5)}
    act_id {rand(1..5)}
    collective_decision_id {rand(1..5)}
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
    user_id {rand(1..5)}
    manager_id {rand(1..5)}
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

FactoryGirl.define do
  factory :accountable do
    surname {Faker::Name.last_name}
    sequence(:name) {|n| "accountable_#{n}"}
    phone {Faker::PhoneNumber.phone_number}
    fax {Faker::PhoneNumber.phone_number}
    email {Faker::Internet.email}
  end
end

@accountable1 = FactoryGirl.create(:accountable)
@accountable2 = FactoryGirl.create(:accountable)
@accountable3 = FactoryGirl.create(:accountable)
@accountable4 = FactoryGirl.create(:accountable)
@accountable5 = FactoryGirl.create(:accountable)
@accountable6 = FactoryGirl.create(:accountable)
@accountable7 = FactoryGirl.create(:accountable)
@accountable8 = FactoryGirl.create(:accountable)
@accountable9 = FactoryGirl.create(:accountable)
@accountable10 = FactoryGirl.create(:accountable)


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

@org1 = FactoryGirl.create(:organisation)
@org2 = FactoryGirl.create(:organisation)
@org3 = FactoryGirl.create(:organisation, is_this_my_organisation: true)
@org4 = FactoryGirl.create(:organisation)
@org5 = FactoryGirl.create(:organisation)
@org6 = FactoryGirl.create(:organisation)

@org1.accountables << @accountable1
@org1.accountables << @accountable2
@org1.accountables << @accountable3
@org2.accountables << @accountable4
@org2.accountables << @accountable5
@org3.accountables << @accountable6
@org4.accountables << @accountable7
@org5.accountables << @accountable8
@org5.accountables << @accountable9
@org5.accountables << @accountable10

# @ib1=ImplementationBody.create( special_body_name:'Δήμος Κομοτηνής',                           special_body_code:'01202', address:'Bύρωνος 13 Κομοτηνή',    phone:'2531023320', fax:'255138451',  email:'sgouros@yahoo.com', name:'Τεχνική Υπηρεσία ΠΕ ',                   comments:'', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35', body_code:'213', body_name:'Αποκεντρωμένη Διοίκηση ΑΜΘ' )
# @ib2=ImplementationBody.create( special_body_name:'Δήμος Δράμας',                              special_body_code:'01202', address:'Bύρωνος 1 Δράμα ',       phone:'2531023320', fax:'255138451',  email:'sgouros@yahoo.com', name:'Τεχνική Υπηρεσία',                       comments:'', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35', body_code:'213', body_name:'Αποκεντρωμένη Διοίκηση ΑΜΘ' )
# @ib3=ImplementationBody.create( special_body_name:'Δήμος Καβάλας',                             special_body_code:'01202', address:'Bύρωνος 13 Καβάλα ',     phone:'2531023320', fax:'255138451',  email:'sgouros@yahoo.com', name:'Τεχνική Υπηρεσία',                       comments:'', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35', body_code:'213', body_name:'Αποκεντρωμένη Διοίκηση ΑΜΘ' )
# @ib4=ImplementationBody.create( special_body_name:'Δήμος Ξάνθης',                              special_body_code:'01202', address:'Bύρωνος 13 Ξάνθη',       phone:'2531023320', fax:'255138451',  email:'sgouros@yahoo.com', name:'Τεχνική Υπηρεσία',                       comments:'', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35', body_code:'213', body_name:'Αποκεντρωμένη Διοίκηση ΑΜΘ' )
# @ib5=ImplementationBody.create( special_body_name:'Περιφέρεια Ανατολικής Μακεδονίας - Θράκης', special_body_code:'012',   address:'Γ. Κακουλίδου 1, 69100', phone:'2531352161', fax:'2531352184', email:'sgouros@yahoo.com', name:'Διεύθυνση Αναπτυξιακού Προγραμματισμού', comments:'', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35', body_code:'213', body_name:'Αποκεντρωμένη Διοίκηση ΑΜΘ' )
#
# @ib1.projects << @p2013ΕΠ03180036
# @ib1.projects << @p2013ΕΠ03180037
# @ib2.projects << @p2013ΕΠ03180038
# @ib5.projects << @p2013ΕΠ03180039
# @ib5.projects << @p2013ΕΠ03180040
# @ib3.projects << @p2013ΕΠ33120003
# @ib4.projects << @p2013ΕΠ33120004
# @ib5.projects << @p2013ΕΠ33120005
#
# @uc1=Certificate.create( protocol:'84256', date:'2013-03-17 20:13:10', title:'Πιστοποίηση υποχρέωσης 1', amount_cents:'2000000', comments:'οχι' )
# @uc2=Certificate.create( protocol:'84257', date:'2013-03-17 20:13:10', title:'Πιστοποίηση υποχρέωσης 2', amount_cents:'2000000', comments:'οχι' )
# @uc3=Certificate.create( protocol:'84258', date:'2013-03-17 20:13:10', title:'Πιστοποίηση υποχρέωσης 3', amount_cents:'2000000', comments:'οχι' )
# @uc4=Certificate.create( protocol:'84259', date:'2013-03-17 20:13:10', title:'Πιστοποίηση υποχρέωσης 4', amount_cents:'2000000', comments:'οχι' )
# @uc5=Certificate.create( protocol:'84260', date:'2013-03-17 20:13:10', title:'Πιστοποίηση υποχρέωσης 5', amount_cents:'2000000', comments:'οχι' )
# @uc6=Certificate.create( protocol:'84261', date:'2013-03-17 20:13:10', title:'Πιστοποίηση υποχρέωσης 6', amount_cents:'2000000', comments:'οχι' )
#
# @p2013ΕΠ03180039.certificates << @uc1
# @p2013ΕΠ03180039.certificates << @uc2
# @p2013ΕΠ03180039.certificates << @uc3
# @p2013ΕΠ03180040.certificates << @uc4
# @p2013ΕΠ03180040.certificates << @uc5
# @p2013ΕΠ03180036.certificates << @uc6
#
# @inv1=Invoice.create( i_number:'4256', description:'Εργασίες συντήρησης 1', date:'2013-10-17 20:13:10', contractor_fiscal_code:'053681751', contractor_name:'Σγούρος Γεώργιος',       normalized_contractor_name:'ΣΓΟΥΡΟΣ ΓΕΩΡΓΙΟΣ',       amount_cents:'100000', payoff_deadline:'2013-11-10 00:00:00', comments:'οχι' )
# @inv2=Invoice.create( i_number:'4257', description:'Εργασίες συντήρησης 2', date:'2013-10-17 20:13:10', contractor_fiscal_code:'053681751', contractor_name:'Σγούρος Γεώργιος',       normalized_contractor_name:'ΣΓΟΥΡΟΣ ΓΕΩΡΓΙΟΣ',       amount_cents:'100000', payoff_deadline:'2013-10-10 00:00:00', comments:'οχι' )
# @inv3=Invoice.create( i_number:'4258', description:'Εργασίες συντήρησης 3', date:'2013-10-17 20:13:10', contractor_fiscal_code:'053681751', contractor_name:'Σγούρος Γεώργιος',       normalized_contractor_name:'ΣΓΟΥΡΟΣ ΓΕΩΡΓΙΟΣ',       amount_cents:'100000', payoff_deadline:'2013-09-10 00:00:00', comments:'οχι' )
# @inv4=Invoice.create( i_number:'4259', description:'Εργασίες συντήρησης 4', date:'2013-03-17 20:13:10', contractor_fiscal_code:'053681751', contractor_name:'Σγούρος Γεώργιος',       normalized_contractor_name:'ΣΓΟΥΡΟΣ ΓΕΩΡΓΙΟΣ',       amount_cents:'100000', payoff_deadline:'2013-08-10 00:00:00', comments:'οχι' )
# @inv5=Invoice.create( i_number:'4260', description:'Εργασίες συντήρησης 5', date:'2013-03-17 20:13:10', contractor_fiscal_code:'053681751', contractor_name:'Σγούρος Γεώργιος',       normalized_contractor_name:'ΣΓΟΥΡΟΣ ΓΕΩΡΓΙΟΣ',       amount_cents:'100000', payoff_deadline:'2013-07-10 00:00:00', comments:'οχι' )
# @inv6=Invoice.create( i_number:'4261', description:'Εργασίες συντήρησης 6', date:'2013-03-17 20:13:10', contractor_fiscal_code:'053681751', contractor_name:'Σγούρος Γεώργιος',       normalized_contractor_name:'ΣΓΟΥΡΟΣ ΓΕΩΡΓΙΟΣ',       amount_cents:'100000', payoff_deadline:'2013-06-10 00:00:00', comments:'οχι' )
# @inv7=Invoice.create( i_number:'4262', description:'Εργασίες συντήρησης 7', date:'2013-03-17 20:13:10', contractor_fiscal_code:'053681751', contractor_name:'Κυριαζόγλου Αναστάσιος', normalized_contractor_name:'ΚΥΡΙΑΖΟΓΛΟΥ ΑΝΑΣΤΑΣΙΟΣ', amount_cents:'100000', payoff_deadline:'2013-09-10 00:00:00', comments:'οχι' )
# @inv8=Invoice.create( i_number:'4263', description:'Εργασίες συντήρησης 8', date:'2013-03-17 20:13:10', contractor_fiscal_code:'053681751', contractor_name:'Κυριαζόγλου Αναστάσιος', normalized_contractor_name:'ΚΥΡΙΑΖΟΓΛΟΥ ΑΝΑΣΤΑΣΙΟΣ', amount_cents:'100000', payoff_deadline:'2013-08-10 00:00:00', comments:'οχι' )
#
# @uc1.invoices << @inv1
# @uc1.invoices << @inv2
# @uc1.invoices << @inv3
# @uc1.invoices << @inv4
# @uc1.invoices << @inv5
# @uc1.invoices << @inv6
# @uc2.invoices << @inv7
# @uc2.invoices << @inv8
#
# @pay1= Paycheck.create( p_number:'01', amount_cents:'10000', date:'2013-05-22 20:13:10', kind:'Τραπεζική Επιταγή', total_cents:'10000', comments:'οχι' )
# @pay2= Paycheck.create( p_number:'02', amount_cents:'10000', date:'2013-05-22 20:13:10', kind:'Τραπεζική Επιταγή', total_cents:'10000', comments:'οχι' )
# @pay3= Paycheck.create( p_number:'03', amount_cents:'10000', date:'2013-05-22 20:13:10', kind:'Τραπεζική Επιταγή', total_cents:'10000', comments:'οχι' )
# @pay4= Paycheck.create( p_number:'04', amount_cents:'10000', date:'2013-05-22 20:13:10', kind:'Τραπεζική Επιταγή', total_cents:'10000', comments:'οχι' )
# @pay5= Paycheck.create( p_number:'05', amount_cents:'10000', date:'2013-05-22 20:13:10', kind:'Τραπεζική Επιταγή', total_cents:'10000', comments:'οχι' )
# @pay6= Paycheck.create( p_number:'06', amount_cents:'10000', date:'2013-05-22 20:13:10', kind:'Τραπεζική Επιταγή', total_cents:'10000', comments:'οχι' )
# @pay7= Paycheck.create( p_number:'07', amount_cents:'10000', date:'2013-05-22 20:13:10', kind:'Τραπεζική Επιταγή', total_cents:'10000', comments:'οχι' )
# @pay8= Paycheck.create( p_number:'08', amount_cents:'10000', date:'2013-05-22 20:13:10', kind:'Τραπεζική Επιταγή', total_cents:'10000', comments:'οχι' )
# @pay9= Paycheck.create( p_number:'09', amount_cents:'10000', date:'2013-05-22 20:13:10', kind:'Τραπεζική Επιταγή', total_cents:'10000', comments:'οχι' )
# @pay10=Paycheck.create( p_number:'10', amount_cents:'10000', date:'2013-05-22 20:13:10', kind:'Τραπεζική Επιταγή', total_cents:'10000', comments:'οχι' )
# @pay11=Paycheck.create( p_number:'11', amount_cents:'10000', date:'2013-05-22 20:13:10', kind:'Τραπεζική Επιταγή', total_cents:'10000', comments:'οχι' )
# @pay12=Paycheck.create( p_number:'12', amount_cents:'10000', date:'2013-05-22 20:13:10', kind:'Τραπεζική Επιταγή', total_cents:'10000', comments:'οχι' )
#
# @inv1.paychecks << @pay1
# @inv1.paychecks << @pay2
# @inv1.paychecks << @pay3
# @inv2.paychecks << @pay4
# @inv3.paychecks << @pay5
# @inv3.paychecks << @pay6
# @inv4.paychecks << @pay7
# @inv5.paychecks << @pay8
# @inv6.paychecks << @pay9
# @inv7.paychecks << @pay10
# @inv7.paychecks << @pay11
# @inv7.paychecks << @pay12
#
# @u1=User.create( name:'Γεώργιος',   surname:'Σγούρος',    phone:'2531352127', email:'sgouros@remth.gr',         admin:'true',  manager:'true',  hashed_password:'7110eda4d09e062aa5e4a390b0a572ac0d2c0220' )
# @u2=User.create( name:'Σιλειάνα',   surname:'Αγγελίνα',   phone:'2531352125', email:'angelina@remth.gr',        admin:'false', manager:'true',  hashed_password:'7110eda4d09e062aa5e4a390b0a572ac0d2c0220' )
# @u3=User.create( name:'Αθανάσιος',  surname:'Ναλμπάντης', phone:'2531352129', email:'analmpan@pamth.gov.gr',    admin:'false', manager:'false', hashed_password:'7110eda4d09e062aa5e4a390b0a572ac0d2c0220' )
# @u4=User.create( name:'Βασιλική',   surname:'Σωτηριάδου', phone:'2531352164', email:'sotiriadou@pamth.gov.gr',  admin:'false', manager:'false', hashed_password:'7110eda4d09e062aa5e4a390b0a572ac0d2c0220' )
# @u5=User.create( name:'Παρασκευή',  surname:'Χουρίδου',   phone:'2531352126', email:'pchouridou@pamth.gov.gr',  admin:'false', manager:'false', hashed_password:'7110eda4d09e062aa5e4a390b0a572ac0d2c0220' )
# @u6=User.create( name:'Τυπικός',    surname:'Χειριστής',  phone:'2531352126', email:'user@user.gr',             admin:'false', manager:'false', hashed_password:'7110eda4d09e062aa5e4a390b0a572ac0d2c0220' )
#
# @ib1.users << @u6
# @ib2.users << @u6
# @ib3.users << @u6
# @ib4.users << @u6
# @ib5.users << @u1
# @ib5.users << @u2
# @ib5.users << @u3
# @ib5.users << @u4
# @ib5.users << @u5
#
# @u1.projects << @p2013ΕΠ03180036
# @u1.projects << @p2013ΕΠ03180037
# @u1.projects << @p2013ΕΠ03180038
# @u1.projects << @p2013ΕΠ03180039
# @u1.projects << @p2013ΕΠ03180040
# @u2.projects << @p2013ΕΠ33120003
# @u2.projects << @p2013ΕΠ33120004
# @u3.projects << @p2013ΕΠ33120005
