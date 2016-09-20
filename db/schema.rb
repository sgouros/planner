# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160920084201) do

  create_table "act_plans", force: :cascade do |t|
    t.string   "code"
    t.text     "description"
    t.integer  "target_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "acts", force: :cascade do |t|
    t.string   "code"
    t.text     "description"
    t.integer  "act_plan_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "allocations", force: :cascade do |t|
    t.string   "protocol"
    t.date     "start_date"
    t.integer  "amount_cents"
    t.integer  "project_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "axes", force: :cascade do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "collective_decision_updates", force: :cascade do |t|
    t.string   "protocol"
    t.date     "start_date"
    t.text     "description"
    t.text     "comments"
    t.integer  "collective_decision_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "collective_decisions", force: :cascade do |t|
    t.string   "code"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "year"
  end

  create_table "contract_updates", force: :cascade do |t|
    t.string   "update_version"
    t.integer  "amount_cents"
    t.date     "start_date"
    t.text     "comments"
    t.integer  "contract_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "contractors", force: :cascade do |t|
    t.string   "name"
    t.string   "fiscal_code"
    t.string   "tax_department"
    t.text     "address"
    t.string   "phone"
    t.string   "fax"
    t.string   "contact_person"
    t.string   "email"
    t.text     "comments"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.text     "normalized_name"
  end

  create_table "contracts", force: :cascade do |t|
    t.integer  "amount_cents"
    t.date     "start_date"
    t.integer  "contractor_id"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "contract_parent_id"
    t.string   "contract_parent_type"
  end

  create_table "expence_forecasts", force: :cascade do |t|
    t.integer  "january_cents"
    t.integer  "february_cents"
    t.integer  "march_cents"
    t.integer  "april_cents"
    t.integer  "may_cents"
    t.integer  "june_cents"
    t.integer  "july_cents"
    t.integer  "august_cents"
    t.integer  "september_cents"
    t.integer  "october_cents"
    t.integer  "november_cents"
    t.integer  "december_cents"
    t.integer  "next_year_cents"
    t.integer  "next_two_years_cents"
    t.integer  "next_three_years_cents"
    t.integer  "next_four_years_cents"
    t.integer  "next_five_years_cents"
    t.integer  "subproject_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string   "code"
    t.text     "description"
    t.date     "date_of_issue"
    t.string   "contractor_fiscal_code"
    t.string   "contractor_name"
    t.integer  "amount_cents"
    t.date     "payoff_deadline"
    t.integer  "undertaking_certificate_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "measures", force: :cascade do |t|
    t.string   "code"
    t.text     "description"
    t.integer  "axis_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "organisations", force: :cascade do |t|
    t.string   "code"
    t.text     "name"
    t.text     "address"
    t.string   "phone"
    t.string   "fax"
    t.string   "contact_person"
    t.string   "email"
    t.boolean  "is_this_my_organisation"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string   "code"
    t.integer  "amount_cents"
    t.date     "transaction_date"
    t.integer  "payment_type_code"
    t.integer  "invoice_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "code"
    t.text     "title"
    t.string   "iis_code"
    t.integer  "prefecture_code"
    t.date     "incorporation_date"
    t.string   "incorporation_protocol"
    t.integer  "phase_code"
    t.integer  "priority_code"
    t.integer  "classification_code"
    t.boolean  "has_multiple_collective_decisions"
    t.integer  "credit_first_quarter_cents",                      limit: 13, default: 0
    t.integer  "credit_second_quarter_cents",                     limit: 13, default: 0
    t.integer  "credit_third_quarter_cents",                      limit: 13, default: 0
    t.integer  "credit_fourth_quarter_cents",                     limit: 13, default: 0
    t.integer  "payments_until_last_year_according_to_sae_cents", limit: 13, default: 0
    t.string   "iban"
    t.string   "expense_code"
    t.integer  "ppi_payments_cents",                              limit: 13, default: 0
    t.integer  "credit_limit_cents",                              limit: 13, default: 0
    t.text     "comments"
    t.integer  "supervisor_body_id"
    t.integer  "act_id"
    t.integer  "collective_decision_id"
    t.integer  "budget_cents",                                    limit: 13, default: 0
    t.text     "budget_history"
    t.datetime "created_at",                                                             null: false
    t.datetime "updated_at",                                                             null: false
    t.integer  "proposed_credit_1_cents",                         limit: 13, default: 0
    t.integer  "proposed_credit_2_cents",                         limit: 13, default: 0
    t.integer  "proposed_credit_3_cents",                         limit: 13, default: 0
    t.integer  "proposed_credit_4_cents",                         limit: 13, default: 0
    t.integer  "proposed_credit_5_cents",                         limit: 13, default: 0
    t.string   "proposed_credit_year_1"
    t.string   "proposed_credit_year_2"
    t.string   "proposed_credit_year_3"
    t.string   "proposed_credit_year_4"
    t.string   "proposed_credit_year_5"
    t.integer  "accountable_id"
    t.integer  "manager_id"
    t.text     "normalized_title"
  end

  create_table "schedule_actions", force: :cascade do |t|
    t.text     "description"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "schedule_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "schedule_parent_id"
    t.string   "schedule_parent_type"
  end

  create_table "subprojects", force: :cascade do |t|
    t.string   "code"
    t.text     "title"
    t.integer  "budget_cents"
    t.text     "description"
    t.integer  "progress_code"
    t.integer  "prefecture_code"
    t.date     "incorporation_date"
    t.string   "incorporation_protocol"
    t.text     "amendments"
    t.integer  "phase_code"
    t.integer  "implementation_code"
    t.integer  "priority_code"
    t.text     "comments"
    t.integer  "proposed_budget_cents"
    t.integer  "supervisor_body_id"
    t.integer  "project_id"
    t.integer  "accountable_id"
    t.integer  "implementation_body_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.text     "normalized_title"
  end

  create_table "targets", force: :cascade do |t|
    t.string   "code"
    t.text     "description"
    t.integer  "measure_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "undertaking_certificates", force: :cascade do |t|
    t.string   "protocol"
    t.date     "start_date"
    t.text     "title"
    t.integer  "amount_cents"
    t.integer  "subproject_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "surname"
    t.string   "phone"
    t.boolean  "admin"
    t.integer  "organisation_id"
    t.boolean  "manager"
    t.text     "normalized_name"
    t.text     "normalized_surname"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
