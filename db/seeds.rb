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
    description Faker::Hacker.say_something_smart
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
    description Faker::Hacker.say_something_smart
    year '2016'
  end
end


# @p2013ΕΠ03180036=Project.create( code:'2013ΕΠ03180036', title:'Αντικατάσταση εσωτερικού δικτύου ύδρευσης στους οικισμούς Ν. Σιδηροχώρι - Γλυφάδα',  normalized_title:'ΑΝΤΙΚΑΤΑΣΤΑΣΗ ΕΣΩΤΕΡΙΚΟΥ ΔΙΚΤΥΟΥ ΥΔΡΕΥΣΗΣ ΣΤΟΥΣ ΟΙΚΙΣΜΟΥΣ Ν. ΣΙΔΗΡΟΧΩΡΙ - ΓΛΥΦΑΔΑ', budget_cents:'20000000', credit_cents:'12000000',   credit_date:'2013-03-17 20:13:10', credit_protocol:'1352/569', allocation_cents:'1500000',   credit_limit_cents:'8000000', iban:'GR0132103210', iis_code:'45716', prefecture:'Ροδόπη',         comments:'no ', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35' )
# @p2013ΕΠ03180037=Project.create( ppi_code:'2013ΕΠ03180037', title:'Οικοπάρκο Αλτιναλμαζή',                                                              normalized_title:'ΟΙΚΟΠΑΡΚΟ ΑΛΤΙΝΑΛΜΑΖΗ',                                                             budget_cents:'20000000', credit_cents:'12000000',   credit_date:'2013-03-17 20:13:10', credit_protocol:'1352/569', allocation_cents:'1500000',   credit_limit_cents:'8000000', iban:'GR0132103210', iis_code:'45716', prefecture:'Ροδόπη',         comments:'no ', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35' )
# @p2013ΕΠ03180038=Project.create( ppi_code:'2013ΕΠ03180038', title:'Παροχή υπηρεσιών συμβούλου τεχνικής υποστήριξης για την ωρίμαση έργων Φαλακρού',     normalized_title:'ΠΑΡΟΧΗ ΥΠΗΡΕΣΙΩΝ ΣΥΜΒΟΥΛΟΥ ΤΕΧΝΙΚΗΣ ΥΠΟΣΤΗΡΙΞΗΣ ΓΙΑ ΤΗΝ ΩΡΙΜΑΝΣΗ ΕΡΓΩΝ ΦΑΛΑΚΡΟΥ',   budget_cents:'20000000', credit_cents:'12000000',   credit_date:'2013-03-17 20:13:10', credit_protocol:'1352/569', allocation_cents:'1500000',   credit_limit_cents:'8000000', iban:'GR0132103210', iis_code:'45716', prefecture:'Δράμα',          comments:'no ', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35' )
# @p2013ΕΠ03180039=Project.create( ppi_code:'2013ΕΠ03180039', title:'Προμήθεια υλικών φωτισμού εμπορικού κέντρου ΔΚ Δράμας',                              normalized_title:'ΠΡΟΜΗΘΕΙΑ ΥΛΙΚΩΝ ΦΩΤΙΣΜΟΥ ΕΜΠΟΡΙΚΟΥ ΚΕΝΤΡΟΥ ΔΚ ΔΡΑΜΑΣ',                             budget_cents:'20000000', credit_cents:'12000000',   credit_date:'2013-03-17 20:13:10', credit_protocol:'1352/569', allocation_cents:'1500000',   credit_limit_cents:'8000000', iban:'GR0132103210', iis_code:'45716', prefecture:'Δράμα',          comments:'no ', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35' )
# @p2013ΕΠ03180040=Project.create( ppi_code:'2013ΕΠ03180040', title:'Εγκατάσταση επεξεργασίας λυμάτων Καλλιράχης Θάσου',                                  normalized_title:'ΕΓΚΑΤΑΣΤΑΣΗ ΕΠΕΞΕΡΓΑΣΙΑΣ ΛΥΜΑΤΩΝ ΚΑΛΛΙΡΑΧΗΣ ΘΑΣΟΥ',                                 budget_cents:'20000000', credit_cents:'12000000',   credit_date:'2013-03-17 20:13:10', credit_protocol:'1352/569', allocation_cents:'1500000',   credit_limit_cents:'8000000', iban:'GR0132103210', iis_code:'45716', prefecture:'Καβάλα',         comments:'no ', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35' )
# @p2013ΕΠ33120003=Project.create( ppi_code:'2013ΕΠ33120003', title:'Κάλυψη εθνικής συμμετοχής έργου BLACK SEA BASIN 2007 - 2013 με τίτλο "Quality"',     normalized_title:'ΚΑΛΥΨΗ ΕΘΝΙΚΗΣ ΣΥΜΜΕΤΟΧΗΣ ΕΡΓΟΥ BLACK SEA BASIN 2007 - 2013 ΜΕ ΤΙΤΛΟ "Quality"',    budget_cents:'20000000', credit_cents:'12000000',   credit_date:'2013-03-17 20:13:10', credit_protocol:'1352/569', allocation_cents:'1500000',   credit_limit_cents:'8000000', iban:'GR0132103210', iis_code:'45716', prefecture:'Περιφέρεια ΑΜΘ', comments:'no ', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35' )
# @p2013ΕΠ33120004=Project.create( ppi_code:'2013ΕΠ33120004', title:'Κάλυψη εθνικής συμμετοχής έργου BLACK SEA BASIN 2007 - 2013 με τίτλο "Regional"',    normalized_title:'ΚΑΛΥΨΗ ΕΘΝΙΚΗΣ ΣΥΜΜΕΤΟΧΗΣ ΕΡΓΟΥ BLACK SEA BASIN 2007 - 2013 ΜΕ ΤΙΤΛΟ "Regional"',   budget_cents:'20000000', credit_cents:'12000000',   credit_date:'2013-03-17 20:13:10', credit_protocol:'1352/569', allocation_cents:'1500000',   credit_limit_cents:'8000000', iban:'GR0132103210', iis_code:'45716', prefecture:'Περιφέρεια ΑΜΘ', comments:'no ', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35' )
# @p2013ΕΠ33120005=Project.create( ppi_code:'2013ΕΠ33120005', title:'Κάλυψη εθνικής συμμετοχής έργου BLACK SEA BASIN 2007 - 2013 με τίτλο "Cultural"',    normalized_title:'ΚΑΛΥΨΗ ΕΘΝΙΚΗΣ ΣΥΜΜΕΤΟΧΗΣ ΕΡΓΟΥ BLACK SEA BASIN 2007 - 2013 ΜΕ ΤΙΤΛΟ "Cultural"',   budget_cents:'20000000', credit_cents:'12000000',   credit_date:'2013-03-17 20:13:10', credit_protocol:'1352/569', allocation_cents:'1500000',   credit_limit_cents:'8000000', iban:'GR0132103210', iis_code:'45716', prefecture:'Περιφέρεια ΑΜΘ', comments:'no ', created_at: '2013-03-17 20:13:10',  updated_at: '2013-03-18 09:59:35' )
# #
# @saep3312.projects << @p2013ΕΠ33120003
# @saep3312.projects << @p2013ΕΠ33120004
# @saep3312.projects << @p2013ΕΠ33120005
# @saep0318.projects << @p2013ΕΠ03180036
# @saep0318.projects << @p2013ΕΠ03180037
# @saep0318.projects << @p2013ΕΠ03180038
# @saep0318.projects << @p2013ΕΠ03180039
# @saep0318.projects << @p2013ΕΠ03180040
#
#
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
