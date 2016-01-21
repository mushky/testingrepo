# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160120222020) do

  create_table "cars", force: :cascade do |t|
    t.integer  "cpar_number"
    t.string   "form"
    t.string   "iat_number"
    t.string   "program"
    t.string   "cpar_source"
    t.string   "category_phase"
    t.string   "impact"
    t.string   "specific_source"
    t.string   "other_category"
    t.string   "raised_by"
    t.string   "assigned_to"
    t.string   "date"
    t.text     "raised_by_remarks"
    t.string   "solution_required_by_date"
    t.text     "solution_required_remarks"
    t.string   "form_completed_by"
    t.integer  "form_completed_by_date"
    t.text     "form_completed_by_remarks"
    t.text     "finding"
    t.text     "finding_impact"
    t.text     "proposed_immediate_action"
    t.string   "proposed_immediate_action_completed_by"
    t.integer  "proposed_immediate_action_date"
    t.text     "proposed_immediate_action_remarks"
    t.boolean  "root_cause_analysis_required"
    t.text     "underlying_root_cause"
    t.string   "determined_by"
    t.integer  "underlying_root_cause_date"
    t.text     "underlying_root_cause_remarks"
    t.text     "proposed_action_for_longterm_solution"
    t.string   "proposed_action_for_longterm_solution_completed_by"
    t.integer  "proposed_action_for_longterm_solution_date"
    t.text     "proposed_action_for_longterm_solution_remarks"
    t.text     "evaluation_of_effectiveness_of_action"
    t.text     "objective_evidence"
    t.string   "closed_out_by"
    t.integer  "evaluation_of_effectiveness_of_action_date"
    t.text     "evaluation_of_effectiveness_of_action_remarks"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  create_table "change_requests", force: :cascade do |t|
    t.string   "project_name"
    t.string   "unique_identifier"
    t.string   "item_title"
    t.string   "approved_by"
    t.string   "change_request_ref"
    t.string   "date_received"
    t.string   "requestor_name"
    t.string   "requestor_role"
    t.string   "related_issue_ref"
    t.string   "contact_details"
    t.string   "requestor_business_unit"
    t.text     "change_description"
    t.text     "change_justification"
    t.text     "alternative_comments"
    t.text     "supporting_information"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "cpars", force: :cascade do |t|
    t.integer  "cpar_number"
    t.string   "form"
    t.integer  "iat_number"
    t.string   "program"
    t.string   "cpar_source"
    t.string   "category_phase"
    t.string   "specific_source"
    t.string   "other_category"
    t.string   "raised_by"
    t.string   "assigned_to"
    t.string   "date"
    t.text     "raised_by_remarks"
    t.string   "solution_required_by_date"
    t.text     "solution_required_remarks"
    t.string   "form_completed_by"
    t.string   "form_completed_by_date"
    t.text     "form_completed_by_remarks"
    t.string   "affects_delivered_product"
    t.text     "affects_delivered_product_describe"
    t.string   "manufacturer"
    t.string   "supplier"
    t.string   "part_number"
    t.string   "nomenclature"
    t.integer  "quantity"
    t.string   "serial_numbers"
    t.string   "disposition"
    t.string   "supplier_action"
    t.string   "follow_up_action"
    t.string   "other_action"
    t.string   "disposition_by"
    t.string   "disposition_date"
    t.string   "disposition_remarks"
    t.string   "sub_contract_po_number"
    t.string   "rma_no"
    t.string   "supplier_name"
    t.string   "address"
    t.string   "point_of_contact"
    t.string   "telephone"
    t.string   "mobile"
    t.string   "email"
    t.text     "finding"
    t.text     "finding_impact"
    t.text     "proposed_immediate_action"
    t.string   "proposed_immediate_action_completed_by"
    t.string   "proposed_immediate_action_date"
    t.text     "proposed_immediate_action_remarks"
    t.string   "root_cause_analysis_required"
    t.text     "underlying_root_cause"
    t.string   "determined_by"
    t.string   "underlying_root_cause_date"
    t.text     "underlying_root_cause_remarks"
    t.text     "proposed_action_for_longterm_solution"
    t.string   "proposed_action_for_longterm_solution_completed_by"
    t.string   "proposed_action_for_longterm_solution_date"
    t.text     "proposed_action_for_longterm_solution_remarks"
    t.text     "evaluation_of_effectiveness_of_action"
    t.text     "objective_evidence"
    t.string   "closed_out_by"
    t.string   "evaluation_of_effectiveness_of_action_date"
    t.text     "evaluation_of_effectiveness_of_action_remarks"
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
    t.string   "program_enum"
    t.integer  "car_counter"
    t.integer  "par_counter"
    t.integer  "ci_counter"
    t.integer  "ncmr_counter"
    t.integer  "scar_counter"
    t.string   "title"
    t.string   "filename"
    t.string   "content_type"
    t.binary   "file_contents"
    t.string   "old_id"
    t.integer  "document_id"
  end

  add_index "cpars", ["document_id"], name: "index_cpars_on_document_id"

  create_table "documents", force: :cascade do |t|
    t.string   "filename"
    t.string   "content_type"
    t.binary   "file_contents"
    t.date     "string"
    t.text     "description"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "inspect_items", force: :cascade do |t|
    t.string   "part"
    t.string   "serial"
    t.text     "description"
    t.string   "date"
    t.integer  "quantity"
    t.boolean  "completed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "inventories", force: :cascade do |t|
    t.string   "part"
    t.string   "serial"
    t.string   "date"
    t.text     "description"
    t.integer  "quantity"
    t.boolean  "completed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "licenses", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "user"
    t.string   "expiration"
    t.string   "key"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "receive_items", force: :cascade do |t|
    t.string   "part"
    t.string   "serial"
    t.string   "date"
    t.text     "description"
    t.integer  "quantity"
    t.boolean  "completed"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "requisitions", force: :cascade do |t|
    t.string   "requestor"
    t.string   "pr_number"
    t.string   "pr_date"
    t.string   "company"
    t.string   "address"
    t.string   "phone"
    t.string   "contact"
    t.text     "comments"
    t.string   "for_export"
    t.string   "to_where"
    t.text     "description_of_use"
    t.integer  "quantity"
    t.string   "uom"
    t.string   "part_number"
    t.text     "description"
    t.float    "unit_cost"
    t.float    "total"
    t.string   "req_date"
    t.string   "acct_number"
    t.string   "usage"
    t.string   "approval"
    t.string   "approval_date"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "ship_items", force: :cascade do |t|
    t.string   "part"
    t.string   "serial"
    t.string   "date"
    t.text     "description"
    t.integer  "quantity"
    t.boolean  "completed"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "shipping_number"
  end

  create_table "users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
