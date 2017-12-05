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

ActiveRecord::Schema.define(version: 20171205004232) do

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "account_id"
    t.text     "name",                 limit: 65535
    t.string   "master_record_id"
    t.string   "account_type"
    t.string   "parent_id"
    t.string   "billing_street"
    t.string   "billing_city"
    t.string   "billing_state"
    t.string   "billing_postal_code"
    t.string   "billing_country"
    t.string   "shipping_street"
    t.string   "shipping_city"
    t.string   "shipping_state"
    t.string   "shipping_postal_code"
    t.string   "shipping_country"
    t.string   "phone"
    t.string   "fax"
    t.string   "website"
    t.string   "industry"
    t.decimal  "annual_revenue",                     precision: 10
    t.integer  "number_of_employees"
    t.text     "description",          limit: 65535
    t.string   "owner_id"
    t.boolean  "is_otp_client"
    t.string   "stakeholder"
    t.integer  "number_of_leads"
    t.string   "latitude"
    t.string   "longitude"
    t.datetime "created_at",                                        null: false
    t.string   "created_by"
    t.datetime "updated_at",                                        null: false
    t.datetime "last_modified_date"
    t.string   "last_modified_by"
    t.string   "system_mod_stamp"
    t.datetime "last_activity_date"
    t.boolean  "is_deleted"
    t.index ["account_id"], name: "index_accounts_on_account_id", using: :btree
    t.index ["account_type"], name: "index_accounts_on_account_type", using: :btree
  end

  create_table "attachment_downloads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "attachment_download_key"
    t.string   "attachment_id"
    t.string   "user_key"
    t.bigint   "download_date"
    t.boolean  "is_deleted"
    t.datetime "created_at",              null: false
    t.string   "created_by"
    t.datetime "updated_at",              null: false
    t.string   "updated_by"
  end

  create_table "attachments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "attachment_id"
    t.string   "parent_id"
    t.string   "owner_id"
    t.string   "name"
    t.string   "content_type"
    t.integer  "body_length"
    t.text     "body",                      limit: 65535
    t.text     "description",               limit: 65535
    t.bigint   "recording_downloaded_date"
    t.string   "recording_downloaded_by"
    t.boolean  "is_private"
    t.boolean  "is_deleted"
    t.datetime "created_at",                              null: false
    t.string   "created_by"
    t.datetime "updated_at",                              null: false
    t.datetime "last_modified_date"
    t.string   "last_modified_by"
    t.string   "system_mod_stamp"
  end

  create_table "campaign_news_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "campaign_news_item_key"
    t.string   "campaign_id"
    t.string   "subject"
    t.string   "body"
    t.boolean  "is_deleted"
    t.datetime "created_at",             null: false
    t.string   "created_by"
    t.datetime "updated_at",             null: false
    t.string   "updated_by"
  end

  create_table "campaigns", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "campaign_id"
    t.text     "description",                            limit: 65535
    t.string   "parent_id"
    t.string   "campaign_type"
    t.string   "status"
    t.bigint   "start_date"
    t.bigint   "end_date"
    t.decimal  "expected_revenue",                                     precision: 10
    t.decimal  "budgeted_cost",                                        precision: 10
    t.decimal  "actual_cost",                                          precision: 10
    t.decimal  "expected_response",                                    precision: 10
    t.integer  "number_sent"
    t.integer  "number_of_leads"
    t.integer  "number_of_converted_leads"
    t.integer  "number_of_contacts"
    t.integer  "number_of_response"
    t.integer  "number_of_opportunities"
    t.integer  "number_of_won_opportunities"
    t.decimal  "amount_all_opportunities",                             precision: 10
    t.decimal  "amount_won_opportunities",                             precision: 10
    t.string   "stakeholder__c"
    t.string   "partner__c"
    t.string   "campaign_news__c"
    t.string   "otp_acct_manager_email"
    t.string   "otp_acct_manager_phone"
    t.string   "otp_acct_manager_title"
    t.string   "IQ001__c"
    t.string   "IQ002__c"
    t.string   "IQ003__c"
    t.string   "IQ004__c"
    t.string   "IQ005__c"
    t.string   "IQ006__c"
    t.string   "IQ007__c"
    t.string   "IQ008__c"
    t.string   "IQ009__c"
    t.string   "IQ010__c"
    t.string   "IQ011__c"
    t.string   "IQ012__c"
    t.string   "IQ013__c"
    t.string   "IQ014__c"
    t.string   "IQ015__c"
    t.string   "cover_sheet_text__c"
    t.boolean  "ramp_up_call_scheduled__c"
    t.boolean  "account_list_sent_for_partner_approval"
    t.boolean  "partner_approved_account_list"
    t.boolean  "calling_has_begun__c"
    t.boolean  "calling_completed__c"
    t.boolean  "gathering_outstanding_feedback__c"
    t.boolean  "campaign_completed__c"
    t.string   "list_criteria_zip_code__c"
    t.string   "list_criteria_state__c"
    t.string   "list_criteria_company_size__c"
    t.string   "list_criteria_annual_revenue__c"
    t.string   "list_criteria_date_contacted__c"
    t.string   "owner__id"
    t.boolean  "is_deleted"
    t.datetime "last_activity_date"
    t.datetime "created_at",                                                          null: false
    t.string   "created_by"
    t.datetime "updated_at",                                                          null: false
    t.datetime "last_modified_date"
    t.string   "last_modified_by"
    t.string   "system_mod_stamp"
    t.string   "name"
    t.boolean  "ramp_up_call_completed__c"
    t.index ["stakeholder__c"], name: "index_campaigns_on_stakeholder__c", using: :btree
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "master_record_id"
    t.string   "account_id"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "salutation"
    t.string   "name"
    t.string   "email"
    t.string   "title"
    t.string   "other_street"
    t.string   "other_city"
    t.string   "other_state"
    t.string   "other_postal_code"
    t.string   "other_country"
    t.string   "mailing_street"
    t.string   "mailing_city"
    t.string   "mailing_state"
    t.string   "mailing_postal_code"
    t.string   "mailing_country"
    t.string   "fax"
    t.string   "mobile_phone"
    t.string   "home_phone"
    t.string   "other_phone"
    t.string   "assistant_phone"
    t.string   "reports_to_id"
    t.string   "department"
    t.string   "assistant_name"
    t.string   "lead_source"
    t.string   "birthdate"
    t.string   "description"
    t.string   "owner_id"
    t.boolean  "is_deleted"
    t.datetime "last_cu_request_date"
    t.datetime "last_cu_update_date"
    t.string   "email_bounced_reason"
    t.datetime "email_bounced_date"
    t.boolean  "receives_email_notifications__c"
    t.boolean  "is_primary_email_receipient__c"
    t.datetime "last_activity_date"
    t.datetime "created_at",                      null: false
    t.string   "created_by"
    t.datetime "updated_at",                      null: false
    t.datetime "last_modified_date"
    t.string   "last_modified_by"
    t.string   "system_mod_stamp"
    t.string   "contact_id"
    t.index ["account_id"], name: "index_contacts_on_account_id", using: :btree
    t.index ["contact_id"], name: "index_contacts_on_contact_id", using: :btree
  end

  create_table "leads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "master_record_id"
    t.string   "last_name"
    t.string   "first_name"
    t.string   "salutation"
    t.string   "name"
    t.string   "email"
    t.string   "title"
    t.string   "company"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.string   "postal_code"
    t.string   "country"
    t.string   "phone"
    t.string   "website"
    t.string   "description"
    t.string   "lead_source"
    t.string   "status"
    t.string   "industry"
    t.string   "rating"
    t.decimal  "annual_revenue",           precision: 10
    t.integer  "number_of_employees"
    t.boolean  "is_converted"
    t.datetime "converted_date"
    t.string   "converted_account_id"
    t.string   "converted_contact_id"
    t.string   "converted_opportunity_id"
    t.boolean  "is_unread_by_owner"
    t.string   "email_bounced_reason"
    t.datetime "email_bounced_date"
    t.string   "owner__id"
    t.boolean  "is_deleted"
    t.datetime "last_activity_date"
    t.datetime "created_at",                              null: false
    t.string   "created_by"
    t.datetime "updated_at",                              null: false
    t.datetime "last_modified_date"
    t.string   "last_modified_by"
    t.string   "system_mod_stamp"
    t.string   "lead_id"
  end

  create_table "notes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "parent_id"
    t.string   "title"
    t.string   "body"
    t.string   "owner_id"
    t.boolean  "is_private"
    t.boolean  "is_deleted"
    t.datetime "created_at",         null: false
    t.string   "created_by"
    t.datetime "updated_at",         null: false
    t.datetime "last_modified_date"
    t.string   "last_modified_by"
    t.string   "system_mod_stamp"
    t.string   "note_id"
  end

  create_table "opportunities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "account_id"
    t.string   "campaign_id"
    t.string   "name"
    t.string   "description"
    t.string   "stage_name"
    t.decimal  "amount",                    precision: 10
    t.decimal  "probability",               precision: 10
    t.datetime "close_date"
    t.string   "opportunity_type"
    t.string   "next_step"
    t.string   "lead_source"
    t.string   "forecast_category"
    t.string   "forecast_category_name"
    t.boolean  "has_opportunity_line_item"
    t.string   "pricebook_2_id"
    t.string   "fiscal_quarter"
    t.string   "fiscal_year"
    t.bigint   "meeting_date_time__c"
    t.string   "registered_deal_num__c"
    t.string   "cover_sheet_text__c"
    t.string   "IQ001__c"
    t.string   "IQ002__c"
    t.string   "IQ003__c"
    t.string   "IQ004__c"
    t.string   "IQ005__c"
    t.string   "IQ006__c"
    t.string   "IQ007__c"
    t.string   "IQ008__c"
    t.string   "IQ009__c"
    t.string   "IQ010__c"
    t.string   "IQ011__c"
    t.string   "IQ012__c"
    t.string   "IQ013__c"
    t.string   "IQ014__c"
    t.string   "IQ015__c"
    t.boolean  "is_otp_approved__c"
    t.boolean  "is_closed"
    t.boolean  "is_won"
    t.boolean  "is_deleted"
    t.datetime "last_activity_date"
    t.datetime "created_at",                               null: false
    t.string   "created_by"
    t.datetime "updated_at",                               null: false
    t.datetime "last_modified_date"
    t.string   "last_modified_by"
    t.string   "system_mod_stamp"
    t.string   "opportunity_id"
  end

  create_table "opportunity_contact_roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "contact_id"
    t.string   "opportunity_id"
    t.string   "role"
    t.boolean  "is_primary"
    t.boolean  "is_deleted"
    t.datetime "last_activity_date"
    t.datetime "created_at",         null: false
    t.string   "created_by"
    t.datetime "updated_at",         null: false
    t.datetime "last_modified_date"
    t.string   "last_modified_by"
    t.string   "system_mod_stamp"
  end

  create_table "opportunity_feedbacks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "opportunity_feedback_key"
    t.string   "opportunity_id"
    t.string   "user_key"
    t.text     "feedback",                 limit: 65535
    t.string   "feedback_type"
    t.boolean  "is_approved"
    t.boolean  "is_deleted"
    t.datetime "created_at",                             null: false
    t.string   "created_by"
    t.datetime "updated_at",                             null: false
    t.string   "updated_by"
  end

  create_table "order_partners", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "order_partner_key"
    t.string   "order_key"
    t.string   "name"
    t.string   "contact_name"
    t.string   "contact_phone"
    t.string   "geography"
    t.integer  "num_appointments"
    t.boolean  "list_needed"
    t.boolean  "is_deleted"
    t.datetime "created_at",        null: false
    t.string   "created_by"
    t.datetime "updated_at",        null: false
    t.string   "updated_by"
  end

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "order_key"
    t.string   "account_id"
    t.string   "order_type"
    t.text     "description",      limit: 65535
    t.integer  "num_appointments"
    t.boolean  "list_needed"
    t.datetime "start_date"
    t.boolean  "is_deleted"
    t.datetime "created_at",                     null: false
    t.string   "created_by"
    t.datetime "updated_at",                     null: false
    t.string   "updated_by"
  end

  create_table "periods", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "fiscal_year_settings_id"
    t.string   "period_type"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string   "quarter_label"
    t.string   "period_label"
    t.integer  "number"
    t.boolean  "is_forecasted_period"
    t.string   "system_mod_stamp"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "period_id"
  end

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "role_key"
    t.string   "name"
    t.string   "description"
    t.boolean  "is_deleted"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tasks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "account_id"
    t.datetime "activity_date"
    t.text     "description",        limit: 65535
    t.string   "status"
    t.string   "subject"
    t.string   "what_id"
    t.string   "who_id"
    t.boolean  "is_closed"
    t.datetime "created_at",                       null: false
    t.string   "created_by"
    t.datetime "updated_at",                       null: false
    t.datetime "last_modified_date"
    t.string   "last_modified_by"
    t.string   "system_mod_stamp"
    t.string   "task_id"
  end

  create_table "user_roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "user_role_key"
    t.string   "user_id"
    t.string   "user_key"
    t.string   "role_id"
    t.string   "role_key"
    t.boolean  "is_deleted"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "user_key"
    t.string   "user_name"
    t.string   "password"
    t.string   "session_id"
    t.datetime "session_expires"
    t.string   "email_address"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "account_id"
    t.string   "phone"
    t.boolean  "receive_texts"
    t.datetime "last_login_date"
    t.datetime "last_activity_date"
    t.boolean  "is_approved"
    t.boolean  "is_deleted"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

end
