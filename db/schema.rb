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

ActiveRecord::Schema.define(version: 20180916213731) do

  create_table "AcceptedEventRelation", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "RelationId",         limit: 18, collation: "latin2_general_ci"
    t.string   "EventId",            limit: 18, collation: "latin2_general_ci"
    t.datetime "RespondedDate"
    t.string   "Response"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.string   "Type",               limit: 50
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["EventId"], name: "CSIX_EventId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RelationId"], name: "CSIX_RelationId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Account", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "MasterRecordId",                            limit: 18,                                 collation: "latin2_general_ci"
    t.string   "Name"
    t.string   "Type",                                      limit: 40
    t.string   "ParentId",                                  limit: 18,                                 collation: "latin2_general_ci"
    t.string   "BillingStreet"
    t.string   "BillingCity",                               limit: 40
    t.string   "BillingState",                              limit: 80
    t.string   "BillingPostalCode",                         limit: 20
    t.string   "BillingCountry",                            limit: 80
    t.decimal  "BillingLatitude",                                            precision: 20, scale: 17
    t.decimal  "BillingLongitude",                                           precision: 20, scale: 17
    t.string   "BillingGeocodeAccuracy",                    limit: 40
    t.string   "BillingAddress",                            limit: 16
    t.string   "ShippingStreet"
    t.string   "ShippingCity",                              limit: 40
    t.string   "ShippingState",                             limit: 80
    t.string   "ShippingPostalCode",                        limit: 20
    t.string   "ShippingCountry",                           limit: 80
    t.decimal  "ShippingLatitude",                                           precision: 20, scale: 17
    t.decimal  "ShippingLongitude",                                          precision: 20, scale: 17
    t.string   "ShippingGeocodeAccuracy",                   limit: 40
    t.string   "ShippingAddress",                           limit: 16
    t.string   "Phone",                                     limit: 40
    t.string   "Fax",                                       limit: 40
    t.string   "Website"
    t.string   "PhotoUrl"
    t.string   "Industry",                                  limit: 40
    t.bigint   "AnnualRevenue"
    t.integer  "NumberOfEmployees"
    t.text     "Description",                               limit: 16777215
    t.string   "OwnerId",                                   limit: 18,                                 collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                               limit: 18,                                 collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                          limit: 18,                                 collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.date     "LastActivityDate"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "JigsawCompanyId",                           limit: 20
    t.string   "DunsNumber",                                limit: 9
    t.string   "Tradestyle"
    t.string   "NaicsCode",                                 limit: 8
    t.string   "NaicsDesc",                                 limit: 120
    t.string   "YearStarted",                               limit: 4
    t.boolean  "IsOTPClient__c"
    t.string   "iSell__OSKeyID__c",                         limit: 16
    t.boolean  "OTTechnologies_Client__c"
    t.text     "Technology_Partnerships__c",                limit: 65535
    t.string   "Storage_Primary_Vendor__c"
    t.string   "Storage_Primary_Solution_Type__c"
    t.string   "Storage_Primary_Solution_Size_TBs__c",      limit: 50
    t.string   "Storage_Primary_Solution_Age__c"
    t.string   "Storage_Growth_Rate_Annual__c"
    t.string   "Server_Primary_Vendor__c"
    t.string   "Storage_Secondary_Vendor__c"
    t.string   "Server_of_Physical_Servers__c",             limit: 50
    t.string   "Server_of_Virtual_Servers__c",              limit: 50
    t.bigint   "Number_of_Leads__c"
    t.string   "Server_Primary_Solution_Age__c"
    t.string   "Networking_Switch_Vendor__c"
    t.string   "Networking_of_Users__c",                    limit: 50
    t.string   "Networking_Firewall_Vendor__c"
    t.string   "Networking_Switch_Solution_Age__c"
    t.string   "Networking_Firewall_Solution_Age__c"
    t.string   "Networking_of_locations__c",                limit: 50
    t.string   "Server_of_Locations__c",                    limit: 50
    t.string   "Storage_of_Locations__c",                   limit: 50
    t.string   "Storage_Disaster_Recovery_Vendor__c"
    t.string   "Storage_Disaster_Recovery_Solution__c",     limit: 50
    t.string   "Storage_Disaster_Recovery_Solution_Age__c"
    t.string   "Storage_Cloud_Vendor__c"
    t.string   "Storage_Cloud_Type__c"
    t.string   "Storage_Virtualized__c"
    t.string   "Storage_Cloud_On_Off_Premise__c"
    t.string   "Storage_Primary_Product__c",                limit: 50
    t.string   "Storage_Primary_Product_Model__c",          limit: 50
    t.string   "Storage_Secondary_Solution_Type__c"
    t.string   "Storage_Secondary_Product__c",              limit: 50
    t.string   "Storage_Secondary_Product_Model__c",        limit: 50
    t.string   "Storage_Secondary_Solution_Age__c"
    t.string   "Storage_Secondary_Solutions_Size_TBs__c",   limit: 50
    t.string   "Server_Primary_Operating_System__c"
    t.string   "Server_Secondary_Vendor__c"
    t.string   "Server_Secondary_Operating_System__c"
    t.string   "Server_Secondary_Solution_Age__c"
    t.text     "Application_Databases__c",                  limit: 65535
    t.text     "Coverage_by_State__c",                      limit: 65535
    t.text     "Applications_Development_Programming__c",   limit: 65535
    t.string   "CloudingoAgent__BAR__c",                    limit: 1
    t.bigint   "CloudingoAgent__BAS__c"
    t.string   "CloudingoAgent__BAV__c",                    limit: 1
    t.string   "CloudingoAgent__BRDI__c",                   limit: 12
    t.string   "CloudingoAgent__BTZ__c",                    limit: 48
    t.string   "CloudingoAgent__SAR__c",                    limit: 1
    t.bigint   "CloudingoAgent__SAS__c"
    t.string   "CloudingoAgent__SAV__c",                    limit: 1
    t.string   "CloudingoAgent__SRDI__c",                   limit: 12
    t.string   "CloudingoAgent__STZ__c",                    limit: 48
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.string   "NAICS2__c"
    t.string   "SIC1__c"
    t.string   "SIC2__c"
    t.string   "Email_Domain__c"
    t.string   "Zoom_Company_ID__c"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["MasterRecordId"], name: "CSIX_MasterRecordId", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AccountContactRole", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "AccountId",          limit: 18, collation: "latin2_general_ci"
    t.string   "ContactId",          limit: 18, collation: "latin2_general_ci"
    t.string   "Role",               limit: 40
    t.boolean  "IsPrimary"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["ContactId"], name: "CSIX_ContactId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AccountFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AccountHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "AccountId",          limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
  end

  create_table "AccountPartner", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "AccountFromId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccountToId",        limit: 18, collation: "latin2_general_ci"
    t.string   "OpportunityId",      limit: 18, collation: "latin2_general_ci"
    t.string   "Role",               limit: 40
    t.boolean  "IsPrimary"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.string   "ReversePartnerId",   limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AccountFromId"], name: "CSIX_AccountFromId", using: :btree
    t.index ["AccountToId"], name: "CSIX_AccountToId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OpportunityId"], name: "CSIX_OpportunityId", using: :btree
    t.index ["ReversePartnerId"], name: "CSIX_ReversePartnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AccountShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "AccountId",              limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",          limit: 18, collation: "latin2_general_ci"
    t.string   "AccountAccessLevel",     limit: 40
    t.string   "OpportunityAccessLevel", limit: 40
    t.string   "CaseAccessLevel",        limit: 40
    t.string   "ContactAccessLevel",     limit: 40
    t.string   "RowCause",               limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",       limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "ActionLinkGroupTemplate", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",        limit: 80
    t.string   "Language",             limit: 40
    t.string   "MasterLabel",          limit: 80
    t.string   "NamespacePrefix",      limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ExecutionsAllowed"
    t.integer  "HoursUntilExpiration"
    t.string   "Category"
    t.boolean  "IsPublished"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ActionLinkTemplate", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",               limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",          limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ActionLinkGroupTemplateId", limit: 18,       collation: "latin2_general_ci"
    t.string   "LabelKey",                  limit: 128
    t.string   "Method"
    t.string   "LinkType"
    t.integer  "Position"
    t.boolean  "IsConfirmationRequired"
    t.boolean  "IsGroupDefault"
    t.string   "UserVisibility"
    t.string   "UserAlias",                 limit: 128
    t.string   "Label"
    t.text     "ActionUrl",                 limit: 16777215
    t.text     "RequestBody",               limit: 16777215
    t.text     "Headers",                   limit: 16777215
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ActionLinkGroupTemplateId"], name: "CSIX_ActionLinkGroupTemplateId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Actions__History", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
  end

  create_table "Actions__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",            limit: 18,    collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",               limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "Prospect__c",        limit: 18,    collation: "latin2_general_ci"
    t.string   "AE_Name__c",         limit: 100
    t.datetime "Timestamp__c"
    t.text     "ProspectID__c",      limit: 65535
    t.string   "Action__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["Prospect__c"], name: "CSIX_Prospect__c", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ActivityHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "AccountId",                                 limit: 18,       collation: "latin2_general_ci"
    t.string   "WhoId",                                     limit: 18,       collation: "latin2_general_ci"
    t.string   "WhatId",                                    limit: 18,       collation: "latin2_general_ci"
    t.string   "Subject",                                   limit: 80
    t.boolean  "IsTask"
    t.date     "ActivityDate"
    t.string   "OwnerId",                                   limit: 18,       collation: "latin2_general_ci"
    t.string   "Status",                                    limit: 40
    t.string   "Priority",                                  limit: 40
    t.boolean  "IsHighPriority"
    t.string   "ActivityType",                              limit: 40
    t.boolean  "IsClosed"
    t.boolean  "IsAllDayEvent"
    t.boolean  "IsVisibleInSelfService"
    t.integer  "DurationInMinutes"
    t.string   "Location",                                  limit: 80
    t.text     "Description",                               limit: 16777215
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                               limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                          limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.integer  "CallDurationInSeconds"
    t.string   "CallType",                                  limit: 40
    t.string   "CallDisposition"
    t.string   "CallObject"
    t.datetime "ReminderDateTime"
    t.boolean  "IsReminderSet"
    t.datetime "EndDateTime"
    t.datetime "StartDateTime"
    t.string   "ActivitySubtype",                           limit: 40
    t.string   "AlternateDetailId",                         limit: 18,       collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.string   "ScheduleOnce__Cancel_reschedule_reason__c"
    t.string   "ScheduleOnce__Event_status__c"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["AlternateDetailId"], name: "CSIX_AlternateDetailId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["WhatId"], name: "CSIX_WhatId", using: :btree
    t.index ["WhoId"], name: "CSIX_WhoId", using: :btree
  end

  create_table "AdditionalNumber", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "CallCenterId",       limit: 18, collation: "latin2_general_ci"
    t.string   "Name",               limit: 80
    t.string   "Description"
    t.string   "Phone",              limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CallCenterId"], name: "CSIX_CallCenterId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AggregateResult", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "Announcement", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "FeedItemId",         limit: 18, collation: "latin2_general_ci"
    t.datetime "ExpirationDate"
    t.boolean  "SendEmails"
    t.boolean  "IsArchived"
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["FeedItemId"], name: "CSIX_FeedItemId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ApexClass", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "NamespacePrefix",       limit: 15
    t.string   "Name"
    t.decimal  "ApiVersion",                             precision: 20, scale: 3
    t.string   "Status",                limit: 40
    t.boolean  "IsValid"
    t.bigint   "BodyCrc"
    t.text     "Body",                  limit: 16777215
    t.integer  "LengthWithoutComments"
    t.datetime "CreatedDate"
    t.string   "CreatedById",           limit: 18,                                collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",      limit: 18,                                collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ApexComponent", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "NamespacePrefix",    limit: 15
    t.string   "Name",               limit: 80
    t.decimal  "ApiVersion",                          precision: 20, scale: 3
    t.string   "MasterLabel",        limit: 80
    t.text     "Description",        limit: 65535
    t.string   "ControllerType",     limit: 40
    t.string   "ControllerKey"
    t.text     "Markup",             limit: 16777215
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,                                collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,                                collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ApexEmailNotification", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "Email"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "ApexLog", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "LogUserId",            limit: 18,  collation: "latin2_general_ci"
    t.integer  "LogLength"
    t.datetime "LastModifiedDate"
    t.string   "Request",              limit: 16
    t.string   "Operation",            limit: 128
    t.string   "Application",          limit: 64
    t.string   "Status"
    t.integer  "DurationMilliseconds"
    t.datetime "SystemModstamp"
    t.datetime "StartTime"
    t.string   "Location",             limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["LogUserId"], name: "CSIX_LogUserId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ApexPage", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "NamespacePrefix",             limit: 15
    t.string   "Name",                        limit: 80
    t.decimal  "ApiVersion",                                   precision: 20, scale: 3
    t.string   "MasterLabel",                 limit: 80
    t.text     "Description",                 limit: 65535
    t.string   "ControllerType",              limit: 40
    t.string   "ControllerKey"
    t.boolean  "IsAvailableInTouch"
    t.boolean  "IsConfirmationTokenRequired"
    t.text     "Markup",                      limit: 16777215
    t.datetime "CreatedDate"
    t.string   "CreatedById",                 limit: 18,                                collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",            limit: 18,                                collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ApexTestQueueItem", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ApexClassId",        limit: 18,    collation: "latin2_general_ci"
    t.string   "Status",             limit: 40
    t.text     "ExtendedStatus",     limit: 65535
    t.string   "ParentJobId",        limit: 18,    collation: "latin2_general_ci"
    t.string   "TestRunResultId",    limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ApexClassId"], name: "CSIX_ApexClassId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["ParentJobId"], name: "CSIX_ParentJobId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["TestRunResultId"], name: "CSIX_TestRunResultId", using: :btree
  end

  create_table "ApexTestResult", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "SystemModstamp"
    t.datetime "TestTimestamp"
    t.string   "Outcome",             limit: 40
    t.string   "ApexClassId",         limit: 18,    collation: "latin2_general_ci"
    t.string   "MethodName"
    t.text     "Message",             limit: 65535
    t.text     "StackTrace",          limit: 65535
    t.string   "AsyncApexJobId",      limit: 18,    collation: "latin2_general_ci"
    t.string   "QueueItemId",         limit: 18,    collation: "latin2_general_ci"
    t.string   "ApexLogId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "ApexTestRunResultId", limit: 18,    collation: "latin2_general_ci"
    t.integer  "RunTime"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ApexClassId"], name: "CSIX_ApexClassId", using: :btree
    t.index ["ApexLogId"], name: "CSIX_ApexLogId", using: :btree
    t.index ["ApexTestRunResultId"], name: "CSIX_ApexTestRunResultId", using: :btree
    t.index ["AsyncApexJobId"], name: "CSIX_AsyncApexJobId", using: :btree
    t.index ["QueueItemId"], name: "CSIX_QueueItemId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ApexTestResultLimits", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ApexTestResultId",   limit: 18, collation: "latin2_general_ci"
    t.integer  "Soql"
    t.integer  "QueryRows"
    t.integer  "Sosl"
    t.integer  "Dml"
    t.integer  "DmlRows"
    t.integer  "Cpu"
    t.integer  "Callouts"
    t.integer  "Email"
    t.integer  "AsyncCalls"
    t.integer  "MobilePush"
    t.string   "LimitContext"
    t.string   "LimitExceptions"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ApexTestResultId"], name: "CSIX_ApexTestResultId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ApexTestRunResult", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "AsyncApexJobId",     limit: 18, collation: "latin2_general_ci"
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "JobName"
    t.boolean  "IsAllTests"
    t.string   "Source"
    t.datetime "StartTime"
    t.datetime "EndTime"
    t.integer  "TestTime"
    t.string   "Status"
    t.integer  "ClassesEnqueued"
    t.integer  "ClassesCompleted"
    t.integer  "MethodsEnqueued"
    t.integer  "MethodsCompleted"
    t.integer  "MethodsFailed"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AsyncApexJobId"], name: "CSIX_AsyncApexJobId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "ApexTestSuite", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "TestSuiteName"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ApexTrigger", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "NamespacePrefix",       limit: 15
    t.string   "Name"
    t.string   "TableEnumOrId",         limit: 40
    t.boolean  "UsageBeforeInsert"
    t.boolean  "UsageAfterInsert"
    t.boolean  "UsageBeforeUpdate"
    t.boolean  "UsageAfterUpdate"
    t.boolean  "UsageBeforeDelete"
    t.boolean  "UsageAfterDelete"
    t.boolean  "UsageIsBulk"
    t.boolean  "UsageAfterUndelete"
    t.decimal  "ApiVersion",                             precision: 20, scale: 3
    t.string   "Status",                limit: 40
    t.boolean  "IsValid"
    t.bigint   "BodyCrc"
    t.text     "Body",                  limit: 16777215
    t.integer  "LengthWithoutComments"
    t.datetime "CreatedDate"
    t.string   "CreatedById",           limit: 18,                                collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",      limit: 18,                                collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AppMenuItem", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",               limit: 18,  collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",          limit: 18,  collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.integer  "SortOrder"
    t.string   "Name",                      limit: 80
    t.string   "NamespacePrefix",           limit: 80
    t.string   "Label",                     limit: 250
    t.string   "Description",               limit: 250
    t.string   "StartUrl"
    t.string   "MobileStartUrl"
    t.string   "LogoUrl"
    t.string   "IconUrl"
    t.string   "InfoUrl"
    t.boolean  "IsUsingAdminAuthorization"
    t.string   "MobilePlatform"
    t.string   "MobileMinOsVer"
    t.string   "MobileDeviceType"
    t.boolean  "IsRegisteredDeviceOnly"
    t.string   "MobileAppVer"
    t.datetime "MobileAppInstalledDate"
    t.string   "MobileAppInstalledVersion"
    t.string   "MobileAppBinaryId"
    t.string   "MobileAppInstallUrl"
    t.boolean  "CanvasEnabled"
    t.string   "CanvasReferenceId",         limit: 18
    t.string   "CanvasUrl"
    t.string   "CanvasAccessMethod"
    t.string   "CanvasSelectedLocations"
    t.string   "CanvasOptions"
    t.string   "Type"
    t.string   "ApplicationId",             limit: 18,  collation: "latin2_general_ci"
    t.integer  "UserSortOrder"
    t.boolean  "IsVisible"
    t.boolean  "IsAccessible"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ApplicationId"], name: "CSIX_ApplicationId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Approval", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "OwnerId",            limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.string   "Status",             limit: 40
    t.text     "RequestComment",     limit: 65535
    t.text     "ApproveComment",     limit: 65535
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Asset", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ContactId",           limit: 18,                                collation: "latin2_general_ci"
    t.string   "AccountId",           limit: 18,                                collation: "latin2_general_ci"
    t.string   "ParentId",            limit: 18,                                collation: "latin2_general_ci"
    t.string   "RootAssetId",         limit: 18,                                collation: "latin2_general_ci"
    t.string   "Product2Id",          limit: 18,                                collation: "latin2_general_ci"
    t.boolean  "IsCompetitorProduct"
    t.datetime "CreatedDate"
    t.string   "CreatedById",         limit: 18,                                collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",    limit: 18,                                collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.string   "SerialNumber",        limit: 80
    t.date     "InstallDate"
    t.date     "PurchaseDate"
    t.date     "UsageEndDate"
    t.string   "Status",              limit: 40
    t.bigint   "Price"
    t.decimal  "Quantity",                             precision: 20, scale: 4
    t.text     "Description",         limit: 16777215
    t.string   "StockKeepingUnit",    limit: 180
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["ContactId"], name: "CSIX_ContactId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["Product2Id"], name: "CSIX_Product2Id", using: :btree
    t.index ["RootAssetId"], name: "CSIX_RootAssetId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AssetFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AssetHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "AssetId",            limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AssetId"], name: "CSIX_AssetId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
  end

  create_table "AssetRelationship", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "AssetRelationshipNumber"
    t.datetime "CreatedDate"
    t.string   "CreatedById",             limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "AssetId",                 limit: 18, collation: "latin2_general_ci"
    t.string   "RelatedAssetId",          limit: 18, collation: "latin2_general_ci"
    t.datetime "FromDate"
    t.datetime "ToDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AssetId"], name: "CSIX_AssetId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RelatedAssetId"], name: "CSIX_RelatedAssetId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AssetRelationshipFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AssetRelationshipHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "AssetRelationshipId", limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",         limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AssetRelationshipId"], name: "CSIX_AssetRelationshipId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
  end

  create_table "AssetTokenEvent", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.text     "ReplayId",           limit: 65535
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.string   "ConnectedAppId",     limit: 18,    collation: "latin2_general_ci"
    t.string   "UserId",             limit: 18,    collation: "latin2_general_ci"
    t.string   "AssetId",            limit: 18,    collation: "latin2_general_ci"
    t.string   "Name"
    t.string   "DeviceId"
    t.text     "DeviceKey",          limit: 65535
    t.datetime "Expiration"
    t.string   "AssetSerialNumber"
    t.string   "AssetName"
    t.text     "ActorTokenPayload",  limit: 65535
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AssetId"], name: "CSIX_AssetId", using: :btree
    t.index ["ConnectedAppId"], name: "CSIX_ConnectedAppId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "AssignmentRule", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",               limit: 120
    t.string   "SobjectType",        limit: 40
    t.boolean  "Active"
    t.string   "CreatedById",        limit: 18,  collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18,  collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AsyncApexJob", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "CreatedDate"
    t.string   "CreatedById",         limit: 18, collation: "latin2_general_ci"
    t.string   "JobType",             limit: 40
    t.string   "ApexClassId",         limit: 18, collation: "latin2_general_ci"
    t.string   "Status",              limit: 40
    t.integer  "JobItemsProcessed"
    t.integer  "TotalJobItems"
    t.integer  "NumberOfErrors"
    t.datetime "CompletedDate"
    t.string   "MethodName"
    t.string   "ExtendedStatus"
    t.string   "ParentJobId",         limit: 18, collation: "latin2_general_ci"
    t.string   "LastProcessed",       limit: 15
    t.integer  "LastProcessedOffset"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ApexClassId"], name: "CSIX_ApexClassId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["ParentJobId"], name: "CSIX_ParentJobId", using: :btree
  end

  create_table "AttachedContentDocument", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "LinkedEntityId",     limit: 18, collation: "latin2_general_ci"
    t.string   "ContentDocumentId",  limit: 18, collation: "latin2_general_ci"
    t.string   "Title"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "FileType",           limit: 20
    t.integer  "ContentSize"
    t.string   "FileExtension",      limit: 40
    t.string   "ContentUrl"
    t.string   "SharingOption",      limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentDocumentId"], name: "CSIX_ContentDocumentId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["LinkedEntityId"], name: "CSIX_LinkedEntityId", using: :btree
  end

  create_table "AttachedContentNote", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "LinkedEntityId",     limit: 18, collation: "latin2_general_ci"
    t.string   "ContentDocumentId",  limit: 18, collation: "latin2_general_ci"
    t.string   "Title"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "FileType",           limit: 20
    t.integer  "ContentSize"
    t.string   "FileExtension",      limit: 40
    t.string   "TextPreview"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentDocumentId"], name: "CSIX_ContentDocumentId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["LinkedEntityId"], name: "CSIX_LinkedEntityId", using: :btree
  end

  create_table "Attachment", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "ParentId",           limit: 18,         collation: "latin2_general_ci"
    t.string   "Name"
    t.boolean  "IsPrivate"
    t.string   "ContentType",        limit: 120
    t.integer  "BodyLength"
    t.text     "Body",               limit: 4294967295, collation: "latin2_general_ci"
    t.string   "OwnerId",            limit: 18,         collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,         collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,         collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.text     "Description",        limit: 65535
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AuraDefinition", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",            limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",       limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "AuraDefinitionBundleId", limit: 18,       collation: "latin2_general_ci"
    t.string   "DefType"
    t.string   "Format"
    t.text     "Source",                 limit: 16777215
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AuraDefinitionBundleId"], name: "CSIX_AuraDefinitionBundleId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AuraDefinitionBundle", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",      limit: 80
    t.string   "Language",           limit: 40
    t.string   "MasterLabel",        limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,                          collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,                          collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.decimal  "ApiVersion",                    precision: 20, scale: 3
    t.string   "Description"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AuthConfig", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",               limit: 80
    t.string   "Language",                    limit: 40
    t.string   "MasterLabel",                 limit: 80
    t.string   "NamespacePrefix",             limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",                 limit: 18,  collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",            limit: 18,  collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Url",                         limit: 240
    t.boolean  "AuthOptionsUsernamePassword"
    t.boolean  "AuthOptionsSaml"
    t.boolean  "AuthOptionsAuthProvider"
    t.boolean  "IsActive"
    t.string   "Type"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AuthConfigProviders", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "AuthConfigId",       limit: 18, collation: "latin2_general_ci"
    t.string   "AuthProviderId",     limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AuthConfigId"], name: "CSIX_AuthConfigId", using: :btree
    t.index ["AuthProviderId"], name: "CSIX_AuthProviderId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "AuthProvider", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "CreatedDate"
    t.string   "ProviderType",                         limit: 40
    t.string   "FriendlyName",                         limit: 32
    t.string   "DeveloperName",                        limit: 32
    t.string   "RegistrationHandlerId",                limit: 18,    collation: "latin2_general_ci"
    t.string   "ExecutionUserId",                      limit: 18,    collation: "latin2_general_ci"
    t.string   "ConsumerKey",                          limit: 256
    t.string   "ConsumerSecret",                       limit: 100
    t.text     "ErrorUrl",                             limit: 65535
    t.text     "AuthorizeUrl",                         limit: 65535
    t.text     "TokenUrl",                             limit: 65535
    t.text     "UserInfoUrl",                          limit: 65535
    t.string   "DefaultScopes",                        limit: 256
    t.text     "IdTokenIssuer",                        limit: 65535
    t.boolean  "OptionsSendAccessTokenInHeader"
    t.boolean  "OptionsSendClientCredentialsInHeader"
    t.boolean  "OptionsIncludeOrgIdInId"
    t.text     "IconUrl",                              limit: 65535
    t.text     "LogoutUrl",                            limit: 65535
    t.string   "PluginId",                             limit: 18,    collation: "latin2_general_ci"
    t.string   "CustomMetadataTypeRecord",             limit: 15
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["ExecutionUserId"], name: "CSIX_ExecutionUserId", using: :btree
    t.index ["PluginId"], name: "CSIX_PluginId", using: :btree
    t.index ["RegistrationHandlerId"], name: "CSIX_RegistrationHandlerId", using: :btree
  end

  create_table "AuthSession", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UsersId",              limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "LastModifiedDate"
    t.integer  "NumSecondsValid"
    t.string   "UserType",             limit: 40
    t.string   "SourceIp",             limit: 39
    t.string   "LoginType",            limit: 40
    t.string   "SessionType",          limit: 40
    t.string   "SessionSecurityLevel", limit: 40
    t.text     "LogoutUrl",            limit: 65535
    t.string   "ParentId",             limit: 18,    collation: "latin2_general_ci"
    t.string   "LoginHistoryId",       limit: 18,    collation: "latin2_general_ci"
    t.string   "LoginGeoId",           limit: 18,    collation: "latin2_general_ci"
    t.boolean  "IsCurrent"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["LoginGeoId"], name: "CSIX_LoginGeoId", using: :btree
    t.index ["LoginHistoryId"], name: "CSIX_LoginHistoryId", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["UsersId"], name: "CSIX_UsersId", using: :btree
  end

  create_table "BackgroundOperation", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "SubmittedAt"
    t.string   "Status"
    t.string   "ExecutionGroup"
    t.string   "SequenceGroup"
    t.integer  "SequenceNumber"
    t.string   "GroupLeaderId",      limit: 18, collation: "latin2_general_ci"
    t.datetime "StartedAt"
    t.datetime "FinishedAt"
    t.string   "WorkerUri"
    t.integer  "Timeout"
    t.datetime "ExpiresAt"
    t.integer  "NumFollowers"
    t.datetime "ProcessAfter"
    t.string   "ParentKey"
    t.integer  "RetryLimit"
    t.integer  "RetryCount"
    t.integer  "RetryBackoff"
    t.string   "Error"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["GroupLeaderId"], name: "CSIX_GroupLeaderId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "BackgroundOperationResult", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "Data"
    t.string   "Message"
    t.string   "MessageType"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
  end

  create_table "BrandTemplate", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name"
    t.string   "DeveloperName",      limit: 80
    t.boolean  "IsActive"
    t.text     "Description",        limit: 65535
    t.text     "Value",              limit: 16777215
    t.string   "NamespacePrefix",    limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "BusinessHours", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",               limit: 80
    t.boolean  "IsActive"
    t.boolean  "IsDefault"
    t.time     "SundayStartTime"
    t.time     "SundayEndTime"
    t.time     "MondayStartTime"
    t.time     "MondayEndTime"
    t.time     "TuesdayStartTime"
    t.time     "TuesdayEndTime"
    t.time     "WednesdayStartTime"
    t.time     "WednesdayEndTime"
    t.time     "ThursdayStartTime"
    t.time     "ThursdayEndTime"
    t.time     "FridayStartTime"
    t.time     "FridayEndTime"
    t.time     "SaturdayStartTime"
    t.time     "SaturdayEndTime"
    t.string   "TimeZoneSidKey",     limit: 40
    t.datetime "SystemModstamp"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastViewedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "BusinessProcess", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",               limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.string   "Description"
    t.string   "TableEnumOrId",      limit: 40
    t.boolean  "IsActive"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CallCenter", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name"
    t.string   "InternalName",       limit: 240
    t.decimal  "Version",                          precision: 20, scale: 5
    t.text     "AdapterUrl",         limit: 65535
    t.text     "CustomSettings",     limit: 65535
    t.datetime "SystemModstamp"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,                             collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,                             collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Campaign", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name",                                     limit: 80
    t.string   "ParentId",                                 limit: 18,                                collation: "latin2_general_ci"
    t.string   "Type",                                     limit: 40
    t.string   "Status",                                   limit: 40
    t.date     "StartDate"
    t.date     "EndDate"
    t.bigint   "ExpectedRevenue"
    t.bigint   "BudgetedCost"
    t.bigint   "ActualCost"
    t.decimal  "ExpectedResponse",                                          precision: 20, scale: 4
    t.bigint   "NumberSent"
    t.boolean  "IsActive"
    t.text     "Description",                              limit: 16777215
    t.integer  "NumberOfLeads"
    t.integer  "NumberOfConvertedLeads"
    t.integer  "NumberOfContacts"
    t.integer  "NumberOfResponses"
    t.integer  "NumberOfOpportunities"
    t.integer  "NumberOfWonOpportunities"
    t.bigint   "AmountAllOpportunities"
    t.bigint   "AmountWonOpportunities"
    t.string   "OwnerId",                                  limit: 18,                                collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                              limit: 18,                                collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                         limit: 18,                                collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.date     "LastActivityDate"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "CampaignMemberRecordTypeId",               limit: 18,                                collation: "latin2_general_ci"
    t.string   "Stakeholder__c",                           limit: 18,                                collation: "latin2_general_ci"
    t.string   "Partner__c",                               limit: 18,                                collation: "latin2_general_ci"
    t.text     "Campaign_News__c",                         limit: 16777215
    t.string   "OTP_AcctManager_Name__c",                  limit: 128
    t.string   "OTP_AcctManager_Email__c",                 limit: 128
    t.string   "OTP_AcctManager_Title__c",                 limit: 128
    t.string   "OTP_AcctManager_Phone__c",                 limit: 128
    t.string   "Client_Campaign_ID__c",                    limit: 100
    t.string   "Partner_Account_Manager__c",               limit: 100
    t.string   "Lead_Catcher_First_Name__c",               limit: 100
    t.string   "Lead_Catcher_Last_Name__c",                limit: 100
    t.string   "Lead_Catcher_Email__c",                    limit: 100
    t.bigint   "Deal_Value__c"
    t.integer  "Lead_Goal__c"
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
    t.text     "Cover_Sheet_Text__c",                      limit: 16777215
    t.boolean  "Ramp_Up_Call_Scheduled__c"
    t.boolean  "Ramp_Up_Call_Completed__c"
    t.boolean  "Account_List_Sent_for_Parter_Approval__c"
    t.boolean  "Partner_Approved_Account_List__c"
    t.boolean  "Calling_Has_Begun__c"
    t.boolean  "Calling_Completed__c"
    t.boolean  "Gathering_Outstanding_Feedback__c"
    t.boolean  "Campaign_Completed__c"
    t.text     "List_criteria_zip_code__c",                limit: 65535
    t.string   "List_criteria_company_size__c",            limit: 128
    t.string   "List_criteria_annual_revenue__c",          limit: 128
    t.date     "List_criteria_date_contacted__c"
    t.text     "Product_Solution_Capability__c",           limit: 65535
    t.text     "Vendor_Partnerships__c",                   limit: 65535
    t.string   "Solution_Brand__c"
    t.decimal  "Price_Per_Appointment__c",                                  precision: 20, scale: 4
    t.text     "Industry__c",                              limit: 16777215
    t.text     "Area_Code__c",                             limit: 16777215
    t.string   "Billing_Contact__c",                       limit: 18,                                collation: "latin2_general_ci"
    t.string   "Invoice_Created__c"
    t.string   "PO__c"
    t.string   "X1st_Invoice__c"
    t.decimal  "X1st_Invoice_Amount__c",                                    precision: 20, scale: 4
    t.date     "X1st_Invoice_Issued_Date__c"
    t.date     "X1st_Invoice_Due_Date__c"
    t.string   "X1st_Invoice_Paid__c"
    t.decimal  "X1st_Invoice_Paid_Amount__c",                               precision: 20, scale: 4
    t.date     "X1st_Invoice_Paid_Date__c"
    t.string   "X2nd_Invoice__c"
    t.decimal  "X2nd_Invoice_Amount__c",                                    precision: 20, scale: 4
    t.date     "X2nd_Invoice_Issued_Date__c"
    t.string   "X2nd_Invoice_Paid__c"
    t.decimal  "X2nd_Invoice_Paid_Amount__c",                               precision: 20, scale: 4
    t.date     "X2nd_Invoice_Paid_Date__c"
    t.date     "X2nd_Invoice_Due_Date__c"
    t.date     "Launch_Call_Date__c"
    t.text     "OTP_Team_Assigned__c",                     limit: 65535
    t.date     "CompletedDate__c"
    t.decimal  "DaysinMarket__c",                                           precision: 20, scale: 4
    t.text     "List_criteria_state__c",                   limit: 65535
    t.string   "Product_Category__c"
    t.text     "Additional_Criteria__c",                   limit: 16777215
    t.boolean  "SalesHero_Active__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["Billing_Contact__c"], name: "CSIX_Billing_Contact__c", using: :btree
    t.index ["CampaignMemberRecordTypeId"], name: "CSIX_CampaignMemberRecordTypeId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["Partner__c"], name: "CSIX_Partner__c", using: :btree
    t.index ["Stakeholder__c"], name: "CSIX_Stakeholder__c", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CampaignChangeEvent", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.text     "ReplayId",                                 limit: 65535
    t.string   "ChangeEventHeader",                        limit: 16
    t.string   "Name",                                     limit: 80
    t.string   "ParentId",                                 limit: 18,                                collation: "latin2_general_ci"
    t.string   "Type",                                     limit: 40
    t.string   "Status",                                   limit: 40
    t.date     "StartDate"
    t.date     "EndDate"
    t.bigint   "ExpectedRevenue"
    t.bigint   "BudgetedCost"
    t.bigint   "ActualCost"
    t.decimal  "ExpectedResponse",                                          precision: 20, scale: 4
    t.bigint   "NumberSent"
    t.boolean  "IsActive"
    t.text     "Description",                              limit: 16777215
    t.integer  "NumberOfLeads"
    t.integer  "NumberOfConvertedLeads"
    t.integer  "NumberOfContacts"
    t.integer  "NumberOfResponses"
    t.integer  "NumberOfOpportunities"
    t.integer  "NumberOfWonOpportunities"
    t.bigint   "AmountAllOpportunities"
    t.bigint   "AmountWonOpportunities"
    t.string   "OwnerId",                                  limit: 18,                                collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                              limit: 18,                                collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                         limit: 18,                                collation: "latin2_general_ci"
    t.string   "CampaignMemberRecordTypeId",               limit: 18,                                collation: "latin2_general_ci"
    t.string   "Stakeholder__c",                           limit: 18,                                collation: "latin2_general_ci"
    t.string   "Partner__c",                               limit: 18,                                collation: "latin2_general_ci"
    t.text     "Campaign_News__c",                         limit: 16777215
    t.string   "OTP_AcctManager_Name__c",                  limit: 128
    t.string   "OTP_AcctManager_Email__c",                 limit: 128
    t.string   "OTP_AcctManager_Title__c",                 limit: 128
    t.string   "OTP_AcctManager_Phone__c",                 limit: 128
    t.string   "Client_Campaign_ID__c",                    limit: 100
    t.string   "Partner_Account_Manager__c",               limit: 100
    t.string   "Lead_Catcher_First_Name__c",               limit: 100
    t.string   "Lead_Catcher_Last_Name__c",                limit: 100
    t.string   "Lead_Catcher_Email__c",                    limit: 100
    t.bigint   "Deal_Value__c"
    t.integer  "Lead_Goal__c"
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
    t.text     "Cover_Sheet_Text__c",                      limit: 16777215
    t.boolean  "Ramp_Up_Call_Scheduled__c"
    t.boolean  "Ramp_Up_Call_Completed__c"
    t.boolean  "Account_List_Sent_for_Parter_Approval__c"
    t.boolean  "Partner_Approved_Account_List__c"
    t.boolean  "Calling_Has_Begun__c"
    t.boolean  "Calling_Completed__c"
    t.boolean  "Gathering_Outstanding_Feedback__c"
    t.boolean  "Campaign_Completed__c"
    t.text     "List_criteria_zip_code__c",                limit: 65535
    t.string   "List_criteria_company_size__c",            limit: 128
    t.string   "List_criteria_annual_revenue__c",          limit: 128
    t.date     "List_criteria_date_contacted__c"
    t.text     "Product_Solution_Capability__c",           limit: 65535
    t.text     "Vendor_Partnerships__c",                   limit: 65535
    t.string   "Solution_Brand__c"
    t.decimal  "Price_Per_Appointment__c",                                  precision: 20, scale: 4
    t.text     "Industry__c",                              limit: 16777215
    t.text     "Area_Code__c",                             limit: 16777215
    t.string   "Billing_Contact__c",                       limit: 18,                                collation: "latin2_general_ci"
    t.string   "Invoice_Created__c"
    t.string   "PO__c"
    t.string   "X1st_Invoice__c"
    t.decimal  "X1st_Invoice_Amount__c",                                    precision: 20, scale: 4
    t.date     "X1st_Invoice_Issued_Date__c"
    t.date     "X1st_Invoice_Due_Date__c"
    t.string   "X1st_Invoice_Paid__c"
    t.decimal  "X1st_Invoice_Paid_Amount__c",                               precision: 20, scale: 4
    t.date     "X1st_Invoice_Paid_Date__c"
    t.string   "X2nd_Invoice__c"
    t.decimal  "X2nd_Invoice_Amount__c",                                    precision: 20, scale: 4
    t.date     "X2nd_Invoice_Issued_Date__c"
    t.string   "X2nd_Invoice_Paid__c"
    t.decimal  "X2nd_Invoice_Paid_Amount__c",                               precision: 20, scale: 4
    t.date     "X2nd_Invoice_Paid_Date__c"
    t.date     "X2nd_Invoice_Due_Date__c"
    t.date     "Launch_Call_Date__c"
    t.text     "OTP_Team_Assigned__c",                     limit: 65535
    t.date     "CompletedDate__c"
    t.decimal  "DaysinMarket__c",                                           precision: 20, scale: 4
    t.text     "List_criteria_state__c",                   limit: 65535
    t.string   "Product_Category__c"
    t.text     "Additional_Criteria__c",                   limit: 16777215
    t.boolean  "SalesHero_Active__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["Billing_Contact__c"], name: "CSIX_Billing_Contact__c", using: :btree
    t.index ["CampaignMemberRecordTypeId"], name: "CSIX_CampaignMemberRecordTypeId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["Partner__c"], name: "CSIX_Partner__c", using: :btree
    t.index ["Stakeholder__c"], name: "CSIX_Stakeholder__c", using: :btree
  end

  create_table "CampaignFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CampaignHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "CampaignId",         limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CampaignId"], name: "CSIX_CampaignId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
  end

  create_table "CampaignMember", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "CampaignId",           limit: 18,       collation: "latin2_general_ci"
    t.string   "LeadId",               limit: 18,       collation: "latin2_general_ci"
    t.string   "ContactId",            limit: 18,       collation: "latin2_general_ci"
    t.string   "Status",               limit: 40
    t.boolean  "HasResponded"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.date     "FirstRespondedDate"
    t.string   "Salutation",           limit: 40
    t.string   "Name"
    t.string   "FirstName",            limit: 40
    t.string   "LastName",             limit: 40
    t.string   "Title",                limit: 128
    t.string   "Street"
    t.string   "City",                 limit: 40
    t.string   "State",                limit: 40
    t.string   "PostalCode",           limit: 20
    t.string   "Country",              limit: 80
    t.string   "Email",                limit: 80
    t.string   "Phone",                limit: 40
    t.string   "Fax",                  limit: 40
    t.string   "MobilePhone",          limit: 40
    t.text     "Description",          limit: 16777215
    t.boolean  "DoNotCall"
    t.boolean  "HasOptedOutOfEmail"
    t.boolean  "HasOptedOutOfFax"
    t.string   "LeadSource",           limit: 40
    t.string   "CompanyOrAccount"
    t.string   "Type",                 limit: 40
    t.string   "LeadOrContactId",      limit: 18,       collation: "latin2_general_ci"
    t.string   "LeadOrContactOwnerId", limit: 18,       collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CampaignId"], name: "CSIX_CampaignId", using: :btree
    t.index ["ContactId"], name: "CSIX_ContactId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LeadId"], name: "CSIX_LeadId", using: :btree
    t.index ["LeadOrContactId"], name: "CSIX_LeadOrContactId", using: :btree
    t.index ["LeadOrContactOwnerId"], name: "CSIX_LeadOrContactOwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CampaignMemberStatus", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "CampaignId",         limit: 18,    collation: "latin2_general_ci"
    t.text     "Label",              limit: 65535
    t.integer  "SortOrder"
    t.boolean  "IsDefault"
    t.boolean  "HasResponded"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CampaignId"], name: "CSIX_CampaignId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CampaignShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "CampaignId",          limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",       limit: 18, collation: "latin2_general_ci"
    t.string   "CampaignAccessLevel", limit: 40
    t.string   "RowCause",            limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",    limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CampaignId"], name: "CSIX_CampaignId", using: :btree
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "Case2", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "CaseNumber",            limit: 30
    t.string   "ContactId",             limit: 18,       collation: "latin2_general_ci"
    t.string   "AccountId",             limit: 18,       collation: "latin2_general_ci"
    t.string   "SourceId",              limit: 18,       collation: "latin2_general_ci"
    t.string   "SuppliedName",          limit: 80
    t.string   "SuppliedEmail",         limit: 80
    t.string   "SuppliedPhone",         limit: 40
    t.string   "SuppliedCompany",       limit: 80
    t.string   "Type",                  limit: 40
    t.string   "Status",                limit: 40
    t.string   "Reason",                limit: 40
    t.string   "Origin",                limit: 40
    t.string   "Subject"
    t.string   "Priority",              limit: 40
    t.text     "Description",           limit: 16777215
    t.boolean  "IsClosed"
    t.datetime "ClosedDate"
    t.string   "OwnerId",               limit: 18,       collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",           limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",      limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ContactPhone",          limit: 40
    t.string   "ContactMobile",         limit: 40
    t.string   "ContactEmail",          limit: 80
    t.string   "ContactFax",            limit: 40
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "Bug_Number__c",         limit: 128
    t.boolean  "Replacement_Needed__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["ContactId"], name: "CSIX_ContactId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SourceId"], name: "CSIX_SourceId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CaseComment", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.boolean  "IsPublished"
    t.text     "CommentBody",        limit: 65535
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "SystemModstamp"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CaseContactRole", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "CasesId",            limit: 18, collation: "latin2_general_ci"
    t.string   "ContactId",          limit: 18, collation: "latin2_general_ci"
    t.string   "Role",               limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CasesId"], name: "CSIX_CasesId", using: :btree
    t.index ["ContactId"], name: "CSIX_ContactId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CaseFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CaseHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "CaseId",             limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CaseId"], name: "CSIX_CaseId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
  end

  create_table "CaseShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "CaseId",             limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "CaseAccessLevel",    limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CaseId"], name: "CSIX_CaseId", using: :btree
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "CaseSolution", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "CaseId",             limit: 18, collation: "latin2_general_ci"
    t.string   "SolutionId",         limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CaseId"], name: "CSIX_CaseId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["SolutionId"], name: "CSIX_SolutionId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CaseStatus", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "MasterLabel"
    t.string   "ApiName"
    t.integer  "SortOrder"
    t.boolean  "IsDefault"
    t.boolean  "IsClosed"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CaseSubjectParticle", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",      limit: 80
    t.string   "Language",           limit: 40
    t.string   "MasterLabel",        limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.integer  "Index2"
    t.string   "Type"
    t.string   "TextField"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CaseTeamMember", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",             limit: 18, collation: "latin2_general_ci"
    t.string   "MemberId",             limit: 18, collation: "latin2_general_ci"
    t.string   "TeamTemplateMemberId", limit: 18, collation: "latin2_general_ci"
    t.string   "TeamRoleId",           limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["MemberId"], name: "CSIX_MemberId", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["TeamRoleId"], name: "CSIX_TeamRoleId", using: :btree
    t.index ["TeamTemplateMemberId"], name: "CSIX_TeamTemplateMemberId", using: :btree
  end

  create_table "CaseTeamRole", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",                    limit: 80
    t.string   "AccessLevel",             limit: 40
    t.boolean  "PreferencesVisibleInCSP"
    t.datetime "CreatedDate"
    t.string   "CreatedById",             limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CaseTeamTemplate", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",               limit: 80
    t.text     "Description",        limit: 65535
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CaseTeamTemplateMember", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "TeamTemplateId",     limit: 18, collation: "latin2_general_ci"
    t.string   "MemberId",           limit: 18, collation: "latin2_general_ci"
    t.string   "TeamRoleId",         limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["MemberId"], name: "CSIX_MemberId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["TeamRoleId"], name: "CSIX_TeamRoleId", using: :btree
    t.index ["TeamTemplateId"], name: "CSIX_TeamTemplateId", using: :btree
  end

  create_table "CaseTeamTemplateRecord", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "TeamTemplateId",     limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["TeamTemplateId"], name: "CSIX_TeamTemplateId", using: :btree
  end

  create_table "CategoryData", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "CategoryNodeId",     limit: 18, collation: "latin2_general_ci"
    t.string   "RelatedSobjectId",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CategoryNodeId"], name: "CSIX_CategoryNodeId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RelatedSobjectId"], name: "CSIX_RelatedSobjectId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CategoryNode", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "MasterLabel",        limit: 40
    t.integer  "SortOrder"
    t.string   "SortStyle",          limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ChatterActivity", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",             limit: 18, collation: "latin2_general_ci"
    t.integer  "PostCount"
    t.integer  "CommentCount"
    t.integer  "CommentReceivedCount"
    t.integer  "LikeReceivedCount"
    t.integer  "InfluenceRawRank"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ChatterExtension", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",                limit: 80
    t.string   "Language",                     limit: 40
    t.string   "MasterLabel",                  limit: 80
    t.string   "NamespacePrefix",              limit: 15
    t.boolean  "IsProtected"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                  limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",             limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ExtensionName",                limit: 32
    t.string   "Type"
    t.string   "IconId",                       limit: 18, collation: "latin2_general_ci"
    t.string   "Description"
    t.string   "CompositionComponentEnumOrId"
    t.string   "RenderComponentEnumOrId"
    t.string   "HoverText"
    t.string   "HeaderText"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IconId"], name: "CSIX_IconId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ChatterExtensionConfig", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ChatterExtensionId", limit: 18, collation: "latin2_general_ci"
    t.boolean  "CanCreate"
    t.boolean  "CanRead"
    t.integer  "Position"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ChatterExtensionId"], name: "CSIX_ChatterExtensionId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ClientBrowser", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UsersId",            limit: 18,    collation: "latin2_general_ci"
    t.text     "FullUserAgent",      limit: 65535
    t.text     "ProxyInfo",          limit: 65535
    t.datetime "LastUpdate"
    t.datetime "CreatedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["UsersId"], name: "CSIX_UsersId", using: :btree
  end

  create_table "CloudingoAgent__AccountContact__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",                            limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",                               limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",                        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "CloudingoAgent__Account_Notes__c"
    t.string   "CloudingoAgent__Alternate_Phone__c", limit: 40
    t.string   "CloudingoAgent__Contact_Type__c"
    t.string   "CloudingoAgent__Email__c",           limit: 80
    t.string   "CloudingoAgent__Phone__c",           limit: 40
    t.string   "CloudingoAgent__SalesForce_User__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CloudingoAgent__CldExtCfg__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",                       limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",                          limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",                   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",              limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "CloudingoAgent__FieldName__c"
    t.string   "CloudingoAgent__FieldType__c",  limit: 50
    t.string   "CloudingoAgent__FieldValue__c"
    t.string   "CloudingoAgent__ObjectType__c", limit: 50
    t.string   "CloudingoAgent__Operator__c",   limit: 50
    t.string   "CloudingoAgent__Usage__c",      limit: 50
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CloudingoAgent__CldIn__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",                 limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",                    limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",             limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",        limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.text     "CloudingoAgent__P1__c",   limit: 16777215
    t.text     "CloudingoAgent__P2__c",   limit: 16777215
    t.text     "CloudingoAgent__P3__c",   limit: 16777215
    t.text     "CloudingoAgent__P4__c",   limit: 16777215
    t.text     "CloudingoAgent__P5__c",   limit: 16777215
    t.text     "CloudingoAgent__R1__c",   limit: 16777215
    t.string   "CloudingoAgent__T1__c"
    t.bigint   "CloudingoAgent__stat__c"
    t.integer  "CloudingoAgent__wsm__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CloudingoAgent__Log__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",                        limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",                           limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",                    limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",               limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "CloudingoAgent__CreatedDate__c"
    t.text     "CloudingoAgent__Message__c",     limit: 16777215
    t.string   "CloudingoAgent__Priority__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CloudingoAgent__POSync__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",                         limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",                            limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",                     limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "CloudingoAgent__BID__c",          limit: 50
    t.boolean  "CloudingoAgent__FR__c"
    t.datetime "CloudingoAgent__LastSyncDate__c"
    t.string   "CloudingoAgent__PO__c",           limit: 18, collation: "latin2_general_ci"
    t.string   "CloudingoAgent__RK__c",           limit: 18
    t.string   "CloudingoAgent__ST__c",           limit: 4
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CloudingoAgent__PO__c"], name: "CSIX_CloudingoAgent__PO__c", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CloudingoAgent__PO__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",                      limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",                         limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",                  limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",             limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "CloudingoAgent__STNotUsed__c", limit: 2
    t.string   "CloudingoAgent__ST__c",        limit: 2
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CloudingoAgent__SearchFilter__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",                    limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",                       limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",                limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",           limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.text     "CloudingoAgent__Content__c", limit: 16777215
    t.string   "CloudingoAgent__EXID__c",    limit: 50
    t.string   "CloudingoAgent__Version__c", limit: 20
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CollaborationGroup", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",                   limit: 40
    t.integer  "MemberCount"
    t.string   "OwnerId",                limit: 18,    collation: "latin2_general_ci"
    t.string   "CollaborationType",      limit: 40
    t.text     "Description",            limit: 65535
    t.datetime "CreatedDate"
    t.string   "CreatedById",            limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.text     "FullPhotoUrl",           limit: 65535
    t.text     "MediumPhotoUrl",         limit: 65535
    t.text     "SmallPhotoUrl",          limit: 65535
    t.datetime "LastFeedModifiedDate"
    t.string   "InformationTitle",       limit: 30
    t.text     "InformationBody",        limit: 65535
    t.boolean  "HasPrivateFieldsAccess"
    t.boolean  "CanHaveGuests"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.boolean  "IsArchived"
    t.boolean  "IsAutoArchiveDisabled"
    t.string   "AnnouncementId",         limit: 18,    collation: "latin2_general_ci"
    t.text     "BannerPhotoUrl",         limit: 65535
    t.boolean  "IsBroadcast"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AnnouncementId"], name: "CSIX_AnnouncementId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CollaborationGroupFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CollaborationGroupMember", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "CollaborationGroupId",  limit: 18, collation: "latin2_general_ci"
    t.string   "MemberId",              limit: 18, collation: "latin2_general_ci"
    t.string   "CollaborationRole",     limit: 40
    t.string   "NotificationFrequency", limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",           limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",      limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastFeedAccessDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CollaborationGroupId"], name: "CSIX_CollaborationGroupId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["MemberId"], name: "CSIX_MemberId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CollaborationGroupMemberRequest", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "CollaborationGroupId", limit: 18, collation: "latin2_general_ci"
    t.string   "RequesterId",          limit: 18, collation: "latin2_general_ci"
    t.string   "ResponseMessage"
    t.string   "Status",               limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CollaborationGroupId"], name: "CSIX_CollaborationGroupId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RequesterId"], name: "CSIX_RequesterId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CollaborationGroupRecord", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "CollaborationGroupId", limit: 18, collation: "latin2_general_ci"
    t.string   "RecordId",             limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CollaborationGroupId"], name: "CSIX_CollaborationGroupId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RecordId"], name: "CSIX_RecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CollaborationInvitation", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",                   limit: 18,  collation: "latin2_general_ci"
    t.string   "SharedEntityId",             limit: 18,  collation: "latin2_general_ci"
    t.string   "InviterId",                  limit: 18,  collation: "latin2_general_ci"
    t.string   "InvitedUserEmail",           limit: 240
    t.string   "InvitedUserEmailNormalized", limit: 80
    t.string   "Status",                     limit: 40
    t.string   "OptionalMessage"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                limit: 18,  collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",           limit: 18,  collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InviterId"], name: "CSIX_InviterId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SharedEntityId"], name: "CSIX_SharedEntityId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CombinedAttachment", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "RecordType",         limit: 30
    t.string   "Title"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.string   "FileType",           limit: 30
    t.integer  "ContentSize"
    t.string   "FileExtension",      limit: 40
    t.string   "ContentUrl"
    t.string   "SharingOption",      limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
  end

  create_table "Community", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "SystemModstamp"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.string   "Name",               limit: 80
    t.text     "Description",        limit: 65535
    t.boolean  "IsActive"
    t.boolean  "IsPublished"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ConnectedApplication", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",                               limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",                        limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                   limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "OptionsAllowAdminApprovedUsersOnly"
    t.boolean  "OptionsRefreshTokenValidityMetric"
    t.boolean  "OptionsHasSessionLevelPolicy"
    t.boolean  "OptionsIsInternal"
    t.string   "MobileSessionTimeout",               limit: 40
    t.string   "PinLength",                          limit: 40
    t.text     "StartUrl",                           limit: 65535
    t.text     "MobileStartUrl",                     limit: 65535
    t.integer  "RefreshTokenValidityPeriod"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Contact", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "MasterRecordId",                  limit: 18,                                 collation: "latin2_general_ci"
    t.string   "AccountId",                       limit: 18,                                 collation: "latin2_general_ci"
    t.string   "LastName",                        limit: 80
    t.string   "FirstName",                       limit: 40
    t.string   "Salutation",                      limit: 40
    t.string   "Name",                            limit: 121
    t.string   "OtherStreet"
    t.string   "OtherCity",                       limit: 40
    t.string   "OtherState",                      limit: 80
    t.string   "OtherPostalCode",                 limit: 20
    t.string   "OtherCountry",                    limit: 80
    t.decimal  "OtherLatitude",                                    precision: 20, scale: 17
    t.decimal  "OtherLongitude",                                   precision: 20, scale: 17
    t.string   "OtherGeocodeAccuracy",            limit: 40
    t.string   "OtherAddress",                    limit: 16
    t.string   "MailingStreet"
    t.string   "MailingCity",                     limit: 40
    t.string   "MailingState",                    limit: 80
    t.string   "MailingPostalCode",               limit: 20
    t.string   "MailingCountry",                  limit: 80
    t.decimal  "MailingLatitude",                                  precision: 20, scale: 17
    t.decimal  "MailingLongitude",                                 precision: 20, scale: 17
    t.string   "MailingGeocodeAccuracy",          limit: 40
    t.string   "MailingAddress",                  limit: 16
    t.string   "Phone",                           limit: 40
    t.string   "Fax",                             limit: 40
    t.string   "MobilePhone",                     limit: 40
    t.string   "HomePhone",                       limit: 40
    t.string   "OtherPhone",                      limit: 40
    t.string   "AssistantPhone",                  limit: 40
    t.string   "ReportsToId",                     limit: 18,                                 collation: "latin2_general_ci"
    t.string   "Email",                           limit: 80
    t.string   "Title",                           limit: 128
    t.string   "Department",                      limit: 80
    t.string   "AssistantName",                   limit: 40
    t.string   "LeadSource",                      limit: 40
    t.date     "Birthdate"
    t.text     "Description",                     limit: 16777215
    t.string   "OwnerId",                         limit: 18,                                 collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                     limit: 18,                                 collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                limit: 18,                                 collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.date     "LastActivityDate"
    t.datetime "LastCURequestDate"
    t.datetime "LastCUUpdateDate"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "EmailBouncedReason"
    t.datetime "EmailBouncedDate"
    t.boolean  "IsEmailBounced"
    t.string   "PhotoUrl"
    t.string   "JigsawContactId",                 limit: 20
    t.boolean  "Receives_Email_Notifications__c"
    t.boolean  "Decision_Maker__c"
    t.boolean  "Is_Primary_Email_Recipient__c"
    t.string   "iSell__Avention_ID__c",           limit: 100
    t.string   "Valid_Contact__c"
    t.boolean  "Qualified__c"
    t.bigint   "CloudingoAgent__CES__c"
    t.string   "CloudingoAgent__MAR__c",          limit: 1
    t.bigint   "CloudingoAgent__MAS__c"
    t.string   "CloudingoAgent__MAV__c",          limit: 1
    t.string   "CloudingoAgent__MRDI__c",         limit: 12
    t.string   "CloudingoAgent__MTZ__c",          limit: 48
    t.string   "CloudingoAgent__OAR__c",          limit: 1
    t.bigint   "CloudingoAgent__OAS__c"
    t.string   "CloudingoAgent__OAV__c",          limit: 1
    t.string   "CloudingoAgent__ORDI__c",         limit: 12
    t.string   "CloudingoAgent__OTZ__c",          limit: 48
    t.string   "Twitter_Handle__c",               limit: 100
    t.string   "LinkedIn_Profile__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.string   "Zoom_Individual_ID__c"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["MasterRecordId"], name: "CSIX_MasterRecordId", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["ReportsToId"], name: "CSIX_ReportsToId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContactFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContactHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "ContactId",          limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContactId"], name: "CSIX_ContactId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
  end

  create_table "ContactShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ContactId",          limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "ContactAccessLevel", limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContactId"], name: "CSIX_ContactId", using: :btree
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "ContentAsset", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",            limit: 80
    t.string   "Language",                 limit: 40
    t.string   "MasterLabel",              limit: 80
    t.string   "NamespacePrefix",          limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",              limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",         limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ContentDocumentId",        limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsVisibleByExternalUsers"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentDocumentId"], name: "CSIX_ContentDocumentId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentBody", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "ContentDistribution", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "CreatedDate"
    t.string   "CreatedById",                      limit: 18,  collation: "latin2_general_ci"
    t.string   "OwnerId",                          limit: 18,  collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                 limit: 18,  collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Name",                             limit: 100
    t.boolean  "IsDeleted"
    t.string   "ContentVersionId",                 limit: 18,  collation: "latin2_general_ci"
    t.string   "ContentDocumentId",                limit: 18,  collation: "latin2_general_ci"
    t.string   "RelatedRecordId",                  limit: 18,  collation: "latin2_general_ci"
    t.boolean  "PreferencesAllowPDFDownload"
    t.boolean  "PreferencesAllowOriginalDownload"
    t.boolean  "PreferencesPasswordRequired"
    t.boolean  "PreferencesNotifyOnVisit"
    t.boolean  "PreferencesLinkLatestVersion"
    t.boolean  "PreferencesAllowViewInBrowser"
    t.boolean  "PreferencesExpires"
    t.boolean  "PreferencesNotifyRndtnComplete"
    t.datetime "ExpiryDate"
    t.string   "Password",                         limit: 36
    t.integer  "ViewCount"
    t.datetime "FirstViewDate"
    t.datetime "LastViewDate"
    t.string   "DistributionPublicUrl",            limit: 256
    t.string   "ContentDownloadUrl",               limit: 256
    t.string   "PdfDownloadUrl",                   limit: 256
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentDocumentId"], name: "CSIX_ContentDocumentId", using: :btree
    t.index ["ContentVersionId"], name: "CSIX_ContentVersionId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentDistributionView", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "DistributionId",     limit: 18, collation: "latin2_general_ci"
    t.string   "ParentViewId",       limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.boolean  "IsInternal"
    t.boolean  "IsDownload"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["DistributionId"], name: "CSIX_DistributionId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentViewId"], name: "CSIX_ParentViewId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentDocument", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "CreatedById",              limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",         limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.boolean  "IsArchived"
    t.string   "ArchivedById",             limit: 18,    collation: "latin2_general_ci"
    t.date     "ArchivedDate"
    t.boolean  "IsDeleted"
    t.string   "OwnerId",                  limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Title"
    t.string   "PublishStatus",            limit: 40
    t.string   "LatestPublishedVersionId", limit: 18,    collation: "latin2_general_ci"
    t.string   "ParentId",                 limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.text     "Description",              limit: 65535
    t.integer  "ContentSize"
    t.string   "FileType",                 limit: 20
    t.string   "FileExtension",            limit: 40
    t.string   "SharingOption",            limit: 40
    t.string   "SharingPrivacy",           limit: 40
    t.datetime "ContentModifiedDate"
    t.string   "ContentAssetId",           limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ArchivedById"], name: "CSIX_ArchivedById", using: :btree
    t.index ["ContentAssetId"], name: "CSIX_ContentAssetId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LatestPublishedVersionId"], name: "CSIX_LatestPublishedVersionId", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentDocumentFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentDocumentHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "ContentDocumentId",  limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentDocumentId"], name: "CSIX_ContentDocumentId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
  end

  create_table "ContentDocumentLink", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "LinkedEntityId",     limit: 18, collation: "latin2_general_ci"
    t.string   "ContentDocumentId",  limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "SystemModstamp"
    t.string   "ShareType",          limit: 40
    t.string   "Visibility",         limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentDocumentId"], name: "CSIX_ContentDocumentId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LinkedEntityId"], name: "CSIX_LinkedEntityId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentDocumentSubscription", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "ContentDocumentId",  limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsCommentSub"
    t.boolean  "IsDocumentSub"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentDocumentId"], name: "CSIX_ContentDocumentId", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "ContentFolder", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",           limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",      limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ParentContentFolderId", limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentContentFolderId"], name: "CSIX_ParentContentFolderId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentFolderItem", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.boolean  "IsFolder"
    t.string   "ParentContentFolderId", limit: 18, collation: "latin2_general_ci"
    t.string   "Title"
    t.string   "FileType",              limit: 20
    t.integer  "ContentSize"
    t.string   "FileExtension",         limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",           limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",      limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentContentFolderId"], name: "CSIX_ParentContentFolderId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentFolderLink", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentEntityId",     limit: 18, collation: "latin2_general_ci"
    t.string   "ContentFolderId",    limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "EnableFolderStatus", limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentFolderId"], name: "CSIX_ContentFolderId", using: :btree
    t.index ["ParentEntityId"], name: "CSIX_ParentEntityId", using: :btree
  end

  create_table "ContentFolderMember", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentContentFolderId", limit: 18, collation: "latin2_general_ci"
    t.string   "ChildRecordId",         limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "SystemModstamp"
    t.string   "CreatedById",           limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",      limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ChildRecordId"], name: "CSIX_ChildRecordId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentContentFolderId"], name: "CSIX_ParentContentFolderId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentNote", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Title"
    t.string   "CreatedById",              limit: 18,         collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",         limit: 18,         collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "LastViewedDate"
    t.string   "FileType",                 limit: 20
    t.string   "TextPreview"
    t.integer  "ContentSize"
    t.boolean  "IsDeleted"
    t.string   "FileExtension",            limit: 20
    t.string   "LatestPublishedVersionId", limit: 18,         collation: "latin2_general_ci"
    t.string   "OwnerId",                  limit: 18,         collation: "latin2_general_ci"
    t.text     "Content",                  limit: 4294967295, collation: "latin2_general_ci"
    t.boolean  "IsReadOnly"
    t.string   "SharingPrivacy",           limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["LatestPublishedVersionId"], name: "CSIX_LatestPublishedVersionId", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
  end

  create_table "ContentNotification", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Nature",             limit: 20
    t.string   "UsersId",            limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "EntityType",         limit: 20
    t.string   "EntityIdentifierId", limit: 18,    collation: "latin2_general_ci"
    t.text     "Subject",            limit: 65535
    t.text     "Text",               limit: 65535
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["EntityIdentifierId"], name: "CSIX_EntityIdentifierId", using: :btree
    t.index ["UsersId"], name: "CSIX_UsersId", using: :btree
  end

  create_table "ContentTagSubscription", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "ContentUserSubscription", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "SubscriberUserId",   limit: 18, collation: "latin2_general_ci"
    t.string   "SubscribedToUserId", limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["SubscribedToUserId"], name: "CSIX_SubscribedToUserId", using: :btree
    t.index ["SubscriberUserId"], name: "CSIX_SubscriberUserId", using: :btree
  end

  create_table "ContentVersion", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ContentDocumentId",      limit: 18,         collation: "latin2_general_ci"
    t.boolean  "IsLatest"
    t.text     "ContentUrl",             limit: 65535
    t.string   "ContentBodyId",          limit: 18,         collation: "latin2_general_ci"
    t.string   "VersionNumber",          limit: 20
    t.string   "Title"
    t.text     "Description",            limit: 65535
    t.text     "ReasonForChange",        limit: 65535
    t.string   "SharingOption",          limit: 40
    t.string   "SharingPrivacy",         limit: 40
    t.text     "PathOnClient",           limit: 65535
    t.integer  "RatingCount"
    t.boolean  "IsDeleted"
    t.datetime "ContentModifiedDate"
    t.string   "ContentModifiedById",    limit: 18,         collation: "latin2_general_ci"
    t.integer  "PositiveRatingCount"
    t.integer  "NegativeRatingCount"
    t.integer  "FeaturedContentBoost"
    t.date     "FeaturedContentDate"
    t.string   "OwnerId",                limit: 18,         collation: "latin2_general_ci"
    t.string   "CreatedById",            limit: 18,         collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",       limit: 18,         collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.text     "TagCsv",                 limit: 65535
    t.string   "FileType",               limit: 20
    t.string   "PublishStatus",          limit: 40
    t.text     "VersionData",            limit: 4294967295, collation: "latin2_general_ci"
    t.integer  "ContentSize"
    t.string   "FileExtension",          limit: 40
    t.string   "FirstPublishLocationId", limit: 18,         collation: "latin2_general_ci"
    t.string   "Origin",                 limit: 40
    t.string   "ContentLocation",        limit: 40
    t.string   "TextPreview"
    t.text     "ExternalDocumentInfo1",  limit: 65535
    t.text     "ExternalDocumentInfo2",  limit: 65535
    t.string   "ExternalDataSourceId",   limit: 18,         collation: "latin2_general_ci"
    t.string   "Checksum",               limit: 50
    t.boolean  "IsMajorVersion"
    t.boolean  "IsAssetEnabled"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentBodyId"], name: "CSIX_ContentBodyId", using: :btree
    t.index ["ContentDocumentId"], name: "CSIX_ContentDocumentId", using: :btree
    t.index ["ContentModifiedById"], name: "CSIX_ContentModifiedById", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["ExternalDataSourceId"], name: "CSIX_ExternalDataSourceId", using: :btree
    t.index ["FirstPublishLocationId"], name: "CSIX_FirstPublishLocationId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentVersionComment", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ContentDocumentId",  limit: 18,    collation: "latin2_general_ci"
    t.string   "ContentVersionId",   limit: 18,    collation: "latin2_general_ci"
    t.text     "UserComment",        limit: 65535
    t.datetime "CreatedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentDocumentId"], name: "CSIX_ContentDocumentId", using: :btree
    t.index ["ContentVersionId"], name: "CSIX_ContentVersionId", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
  end

  create_table "ContentVersionHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "ContentVersionId",   limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentVersionId"], name: "CSIX_ContentVersionId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
  end

  create_table "ContentVersionRating", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UserId",             limit: 18,    collation: "latin2_general_ci"
    t.string   "ContentVersionId",   limit: 18,    collation: "latin2_general_ci"
    t.integer  "Rating"
    t.text     "UserComment",        limit: 65535
    t.datetime "LastModifiedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentVersionId"], name: "CSIX_ContentVersionId", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "ContentWorkspace", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name"
    t.text     "Description",                  limit: 65535
    t.string   "TagModel",                     limit: 40
    t.string   "CreatedById",                  limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",             limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastModifiedDate"
    t.string   "DefaultRecordTypeId",          limit: 18,    collation: "latin2_general_ci"
    t.boolean  "IsRestrictContentTypes"
    t.boolean  "IsRestrictLinkedContentTypes"
    t.string   "WorkspaceType",                limit: 40
    t.boolean  "ShouldAddCreatorMembership"
    t.datetime "LastWorkspaceActivityDate"
    t.string   "RootContentFolderId",          limit: 18,    collation: "latin2_general_ci"
    t.string   "NamespacePrefix",              limit: 15
    t.string   "DeveloperName",                limit: 80
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["DefaultRecordTypeId"], name: "CSIX_DefaultRecordTypeId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RootContentFolderId"], name: "CSIX_RootContentFolderId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentWorkspaceDoc", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ContentWorkspaceId", limit: 18, collation: "latin2_general_ci"
    t.string   "ContentDocumentId",  limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "SystemModstamp"
    t.boolean  "IsOwner"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentDocumentId"], name: "CSIX_ContentDocumentId", using: :btree
    t.index ["ContentWorkspaceId"], name: "CSIX_ContentWorkspaceId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentWorkspaceMember", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ContentWorkspaceId",           limit: 18, collation: "latin2_general_ci"
    t.string   "ContentWorkspacePermissionId", limit: 18, collation: "latin2_general_ci"
    t.string   "MemberId",                     limit: 18, collation: "latin2_general_ci"
    t.string   "MemberType",                   limit: 40
    t.string   "CreatedById",                  limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentWorkspaceId"], name: "CSIX_ContentWorkspaceId", using: :btree
    t.index ["ContentWorkspacePermissionId"], name: "CSIX_ContentWorkspacePermissionId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["MemberId"], name: "CSIX_MemberId", using: :btree
  end

  create_table "ContentWorkspacePermission", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name"
    t.string   "Type",                             limit: 40
    t.boolean  "PermissionsManageWorkspace"
    t.boolean  "PermissionsAddContent"
    t.boolean  "PermissionsAddContentOBO"
    t.boolean  "PermissionsArchiveContent"
    t.boolean  "PermissionsDeleteContent"
    t.boolean  "PermissionsFeatureContent"
    t.boolean  "PermissionsViewComments"
    t.boolean  "PermissionsAddComment"
    t.boolean  "PermissionsModifyComments"
    t.boolean  "PermissionsTagContent"
    t.boolean  "PermissionsDeliverContent"
    t.boolean  "PermissionsChatterSharing"
    t.boolean  "PermissionsOrganizeFileAndFolder"
    t.string   "CreatedById",                      limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.string   "LastModifiedById",                 limit: 18,    collation: "latin2_general_ci"
    t.text     "Description",                      limit: 65535
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContentWorkspaceSubscription", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "ContentWorkspaceId", limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentWorkspaceId"], name: "CSIX_ContentWorkspaceId", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "Contract", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "AccountId",               limit: 18,                                 collation: "latin2_general_ci"
    t.string   "OwnerExpirationNotice",   limit: 40
    t.date     "StartDate"
    t.date     "EndDate"
    t.string   "BillingStreet"
    t.string   "BillingCity",             limit: 40
    t.string   "BillingState",            limit: 80
    t.string   "BillingPostalCode",       limit: 20
    t.string   "BillingCountry",          limit: 80
    t.decimal  "BillingLatitude",                          precision: 20, scale: 17
    t.decimal  "BillingLongitude",                         precision: 20, scale: 17
    t.string   "BillingGeocodeAccuracy",  limit: 40
    t.string   "BillingAddress",          limit: 16
    t.string   "ShippingStreet"
    t.string   "ShippingCity",            limit: 40
    t.string   "ShippingState",           limit: 80
    t.string   "ShippingPostalCode",      limit: 20
    t.string   "ShippingCountry",         limit: 80
    t.decimal  "ShippingLatitude",                         precision: 20, scale: 17
    t.decimal  "ShippingLongitude",                        precision: 20, scale: 17
    t.string   "ShippingGeocodeAccuracy", limit: 40
    t.string   "ShippingAddress",         limit: 16
    t.integer  "ContractTerm"
    t.string   "OwnerId",                 limit: 18,                                 collation: "latin2_general_ci"
    t.string   "Status",                  limit: 40
    t.string   "CompanySignedId",         limit: 18,                                 collation: "latin2_general_ci"
    t.date     "CompanySignedDate"
    t.string   "CustomerSignedId",        limit: 18,                                 collation: "latin2_general_ci"
    t.string   "CustomerSignedTitle",     limit: 40
    t.date     "CustomerSignedDate"
    t.text     "SpecialTerms",            limit: 65535
    t.string   "ActivatedById",           limit: 18,                                 collation: "latin2_general_ci"
    t.datetime "ActivatedDate"
    t.string   "StatusCode",              limit: 40
    t.text     "Description",             limit: 16777215
    t.boolean  "IsDeleted"
    t.string   "ContractNumber",          limit: 30
    t.datetime "LastApprovedDate"
    t.datetime "CreatedDate"
    t.string   "CreatedById",             limit: 18,                                 collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",        limit: 18,                                 collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.date     "LastActivityDate"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["ActivatedById"], name: "CSIX_ActivatedById", using: :btree
    t.index ["CompanySignedId"], name: "CSIX_CompanySignedId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CustomerSignedId"], name: "CSIX_CustomerSignedId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContractContactRole", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ContractId",         limit: 18, collation: "latin2_general_ci"
    t.string   "ContactId",          limit: 18, collation: "latin2_general_ci"
    t.string   "Role",               limit: 40
    t.boolean  "IsPrimary"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContactId"], name: "CSIX_ContactId", using: :btree
    t.index ["ContractId"], name: "CSIX_ContractId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContractFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ContractHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "ContractId",         limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContractId"], name: "CSIX_ContractId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
  end

  create_table "ContractStatus", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "MasterLabel"
    t.string   "ApiName"
    t.integer  "SortOrder"
    t.boolean  "IsDefault"
    t.string   "StatusCode",         limit: 40
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CopyForceConfig", primary_key: "property", id: :string, limit: 128, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "propertyValue", limit: 128, null: false
  end

  create_table "CopyForceDDLLog", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "tableName", limit: 64,         null: false
    t.text     "command",   limit: 4294967295, null: false
    t.text     "traceback", limit: 4294967295
    t.datetime "applyDate",                    null: false
  end

  create_table "CopyForceFieldHistory", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "id",          limit: 18,         null: false
    t.string   "tableName",   limit: 64,         null: false
    t.string   "fieldName",   limit: 64,         null: false
    t.text     "oldValue",    limit: 4294967295
    t.text     "newValue",    limit: 4294967295
    t.datetime "createdDate",                    null: false
    t.index ["id", "fieldName", "createdDate"], name: "IX_CopyForceFieldHistory", using: :btree
  end

  create_table "CopyForceJob", primary_key: "jobId", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.datetime "startTime"
    t.datetime "endTime"
    t.integer  "nCopied"
    t.integer  "nTransactions"
    t.integer  "nExceptions"
    t.string   "configFileName",   limit: 64
    t.string   "configFileDir"
    t.string   "copyStormVersion", limit: 32
    t.string   "copyStormDir"
    t.decimal  "elapsedTime",                 precision: 18, scale: 3
    t.integer  "processId"
  end

  create_table "CopyForceJobException", primary_key: ["jobId", "exceptionId"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "jobId",                            null: false
    t.integer  "exceptionId",                      null: false
    t.datetime "exceptionTime",                    null: false
    t.string   "tableName",     limit: 64
    t.string   "message",                          null: false
    t.text     "traceback",     limit: 4294967295
  end

  create_table "CopyForceJobTable", primary_key: ["jobId", "tableName"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.integer  "jobId",                                           null: false
    t.string   "tableName",   limit: 64,                          null: false
    t.datetime "startTime"
    t.datetime "endTime"
    t.integer  "nRead"
    t.integer  "nCopied"
    t.integer  "nSkipped"
    t.integer  "nDeleted"
    t.integer  "nPerMinute"
    t.decimal  "elapsedTime",            precision: 18, scale: 3
  end

  create_table "CopyForceTable", primary_key: "name", id: :string, limit: 64, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "copyForceName",       limit: 64,  null: false
    t.string   "label",               limit: 128, null: false
    t.string   "labelPlural",         limit: 128, null: false
    t.boolean  "creatable"
    t.boolean  "custom"
    t.boolean  "customSetting"
    t.boolean  "deletable"
    t.boolean  "deprecatedAndHidden"
    t.boolean  "feedEnabled"
    t.string   "keyPrefix",           limit: 8
    t.boolean  "layoutable"
    t.boolean  "mergeable"
    t.boolean  "queryable"
    t.boolean  "replicateable"
    t.boolean  "retrieveable"
    t.boolean  "searchable"
    t.boolean  "triggerable"
    t.boolean  "undeletable"
    t.boolean  "updateable"
    t.string   "urlDetail",           limit: 128
    t.string   "urlEdit",             limit: 128
    t.string   "urlNew",              limit: 128
    t.datetime "maxTimestamp"
    t.datetime "lastBackupTimestamp"
    t.datetime "maxTimeboxTimestamp"
  end

  create_table "CopyForceTableChildRelat", primary_key: ["parentTableName", "childTableName", "childFieldName"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "parentTableName",     limit: 64, null: false
    t.string  "childTableName",      limit: 64, null: false
    t.string  "childFieldName",      limit: 64, null: false
    t.string  "relationshipName",    limit: 64
    t.boolean "deprecatedAndHidden"
    t.boolean "restrictedDelete"
  end

  create_table "CopyForceTableField", primary_key: ["tableName", "name"], force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name",                  limit: 64,         null: false
    t.string   "copyForceName",         limit: 64,         null: false
    t.string   "tableName",             limit: 64,         null: false
    t.string   "htmlFormatted",         limit: 1,          null: false
    t.string   "label",                 limit: 128
    t.string   "fieldType",             limit: 32,         null: false
    t.integer  "valueLength"
    t.integer  "valueNdigits"
    t.integer  "valueScale"
    t.string   "relatedToTable",        limit: 64
    t.string   "relationshipName",      limit: 64
    t.boolean  "filterable"
    t.boolean  "nameField"
    t.boolean  "sortable"
    t.boolean  "uniqueValue"
    t.text     "inLineHelpText",        limit: 65535
    t.boolean  "calculated"
    t.text     "formula",               limit: 4294967295
    t.datetime "formulaDefinitionDate"
    t.datetime "formulaRefreshDate"
    t.boolean  "encrypted"
    t.text     "referencesTo",          limit: 4294967295
    t.boolean  "custom"
  end

  create_table "CorsWhitelistEntry", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",      limit: 80
    t.string   "Language",           limit: 40
    t.string   "MasterLabel",        limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "UrlPattern"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CronJobDetail", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name"
    t.string   "JobType",            limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "CronTrigger", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "CronJobDetailId",    limit: 18, collation: "latin2_general_ci"
    t.datetime "NextFireTime"
    t.datetime "PreviousFireTime"
    t.string   "State",              limit: 16
    t.datetime "StartTime"
    t.datetime "EndTime"
    t.string   "CronExpression"
    t.string   "TimeZoneSidKey",     limit: 40
    t.string   "OwnerId",            limit: 18, collation: "latin2_general_ci"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.integer  "TimesTriggered"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["CronJobDetailId"], name: "CSIX_CronJobDetailId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
  end

  create_table "CspTrustedSite", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",      limit: 80
    t.string   "Language",           limit: 40
    t.string   "MasterLabel",        limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "EndpointUrl"
    t.string   "Description"
    t.boolean  "IsActive"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CustomBrand", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
  end

  create_table "CustomBrandAsset", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "CustomBrandId",      limit: 18,    collation: "latin2_general_ci"
    t.string   "AssetCategory",      limit: 40
    t.text     "TextAsset",          limit: 65535
    t.string   "AssetSourceId",      limit: 18,    collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AssetSourceId"], name: "CSIX_AssetSourceId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CustomBrandId"], name: "CSIX_CustomBrandId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
  end

  create_table "CustomObjectUserLicenseMetrics", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.date     "MetricsDate"
    t.string   "UserLicenseId",      limit: 18,  collation: "latin2_general_ci"
    t.string   "CustomObjectId",     limit: 40
    t.datetime "SystemModstamp"
    t.string   "CustomObjectType"
    t.string   "CustomObjectName",   limit: 120
    t.integer  "ObjectCount"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserLicenseId"], name: "CSIX_UserLicenseId", using: :btree
  end

  create_table "CustomPermission", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",      limit: 80
    t.string   "Language",           limit: 40
    t.string   "MasterLabel",        limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.boolean  "IsProtected"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Description"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "CustomPermissionDependency", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",           limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "CustomPermissionId",         limit: 18, collation: "latin2_general_ci"
    t.string   "RequiredCustomPermissionId", limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CustomPermissionId"], name: "CSIX_CustomPermissionId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RequiredCustomPermissionId"], name: "CSIX_RequiredCustomPermissionId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Dashboard", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "FolderId",                     limit: 18,  collation: "latin2_general_ci"
    t.string   "FolderName",                   limit: 256
    t.string   "Title",                        limit: 80
    t.string   "DeveloperName",                limit: 80
    t.string   "NamespacePrefix",              limit: 15
    t.string   "Description"
    t.string   "LeftSize",                     limit: 40
    t.string   "MiddleSize",                   limit: 40
    t.string   "RightSize",                    limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",                  limit: 18,  collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",             limit: 18,  collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "RunningUserId",                limit: 18,  collation: "latin2_general_ci"
    t.integer  "TitleColor"
    t.integer  "TitleSize"
    t.integer  "TextColor"
    t.integer  "BackgroundStart"
    t.integer  "BackgroundEnd"
    t.string   "BackgroundDirection",          limit: 40
    t.string   "Type",                         limit: 40
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "DashboardResultRefreshedDate", limit: 256
    t.string   "DashboardResultRunningUser",   limit: 256
    t.string   "ColorPalette",                 limit: 40
    t.string   "ChartTheme",                   limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["FolderId"], name: "CSIX_FolderId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RunningUserId"], name: "CSIX_RunningUserId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "DashboardComponent", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",               limit: 80
    t.string   "DashboardId",        limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["DashboardId"], name: "CSIX_DashboardId", using: :btree
  end

  create_table "DashboardComponentFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "DashboardFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "DataAssessmentFieldMetric", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",            limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",       limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "DataAssessmentMetricId", limit: 18, collation: "latin2_general_ci"
    t.string   "FieldName"
    t.integer  "NumMatchedInSync"
    t.integer  "NumMatchedDifferent"
    t.integer  "NumMatchedBlanks"
    t.integer  "NumUnmatchedBlanks"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["DataAssessmentMetricId"], name: "CSIX_DataAssessmentMetricId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "DataAssessmentMetric", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",         limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",    limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.integer  "NumTotal"
    t.integer  "NumProcessed"
    t.integer  "NumMatched"
    t.integer  "NumMatchedDifferent"
    t.integer  "NumUnmatched"
    t.integer  "NumDuplicates"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "DataAssessmentValueMetric", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                 limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",            limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "DataAssessmentFieldMetricId", limit: 18, collation: "latin2_general_ci"
    t.string   "FieldValue"
    t.integer  "ValueCount"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["DataAssessmentFieldMetricId"], name: "CSIX_DataAssessmentFieldMetricId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "DataIntegrationRecordPurchasePermission", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",             limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "UserId",                  limit: 18, collation: "latin2_general_ci"
    t.string   "ExternalObject"
    t.integer  "UserRecordPurchaseLimit"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "DataStatistics", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ExternalId"
    t.string   "StatType"
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "Type"
    t.integer  "StatValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "DatacloudAddress", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ExternalId"
    t.string   "AddressLine1"
    t.string   "AddressLine2"
    t.string   "City"
    t.string   "State"
    t.string   "Country"
    t.string   "PostalCode"
    t.string   "Latitude",           limit: 11
    t.string   "Longitude",          limit: 11
    t.string   "GeoAccuracyCode",    limit: 15
    t.string   "GeoAccuracyNum",     limit: 3
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "DatacloudCompany", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ExternalId"
    t.string   "CompanyId",                  limit: 25
    t.string   "Name",                       limit: 128
    t.text     "Description",                limit: 65535
    t.boolean  "IsInactive"
    t.string   "Phone",                      limit: 40
    t.string   "Fax",                        limit: 40
    t.string   "Street"
    t.string   "City"
    t.string   "State",                      limit: 50
    t.string   "StateCode"
    t.string   "Country",                    limit: 50
    t.string   "CountryCode"
    t.string   "Zip",                        limit: 32
    t.string   "Site"
    t.string   "Industry",                   limit: 128
    t.integer  "NumberOfEmployees"
    t.decimal  "AnnualRevenue",                            precision: 20, scale: 4
    t.string   "DunsNumber",                 limit: 128
    t.string   "NaicsCode",                  limit: 128
    t.string   "NaicsDesc",                  limit: 128
    t.string   "Sic",                        limit: 128
    t.string   "SicDesc",                    limit: 128
    t.string   "Ownership",                  limit: 16
    t.boolean  "IsOwned"
    t.string   "TickerSymbol",               limit: 16
    t.string   "TradeStyle",                 limit: 128
    t.string   "Website"
    t.string   "YearStarted",                limit: 4
    t.integer  "ActiveContacts"
    t.datetime "UpdatedDate"
    t.integer  "FortuneRank"
    t.string   "IncludedInSnP500",           limit: 10
    t.integer  "PremisesMeasure"
    t.string   "PremisesMeasureReliability", limit: 64
    t.string   "PremisesMeasureUnit",        limit: 64
    t.decimal  "EmployeeQuantityGrowthRate",               precision: 20, scale: 8
    t.decimal  "SalesTurnoverGrowthRate",                  precision: 20, scale: 8
    t.integer  "PriorYearEmployees"
    t.bigint   "PriorYearRevenue"
    t.boolean  "IsInCrm"
    t.string   "FullAddress"
    t.string   "SicCodeDesc"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "DatacloudContact", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ExternalId"
    t.string   "CompanyId",          limit: 25
    t.string   "ContactId",          limit: 25
    t.string   "CompanyName",        limit: 128
    t.string   "Title",              limit: 128
    t.boolean  "IsInactive"
    t.string   "FirstName",          limit: 128
    t.string   "LastName",           limit: 128
    t.string   "Phone",              limit: 40
    t.string   "Email",              limit: 80
    t.string   "Street"
    t.string   "City"
    t.string   "State",              limit: 50
    t.string   "Country",            limit: 50
    t.string   "Zip",                limit: 32
    t.string   "Department"
    t.string   "Level"
    t.boolean  "IsOwned"
    t.datetime "UpdatedDate"
    t.boolean  "IsInCrm"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "DatacloudOwnedEntity", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",         limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",    limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "DataDotComKey",       limit: 25
    t.string   "DatacloudEntityType"
    t.string   "UserId",              limit: 18, collation: "latin2_general_ci"
    t.string   "PurchaseUsageId",     limit: 18, collation: "latin2_general_ci"
    t.string   "PurchaseType"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["PurchaseUsageId"], name: "CSIX_PurchaseUsageId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "DatacloudPurchaseUsage", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",         limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",    limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "UserId",              limit: 18, collation: "latin2_general_ci"
    t.string   "UserType"
    t.string   "PurchaseType"
    t.string   "DatacloudEntityType"
    t.bigint   "Usage2"
    t.string   "Description"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "DeclinedEventRelation", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "RelationId",         limit: 18, collation: "latin2_general_ci"
    t.string   "EventId",            limit: 18, collation: "latin2_general_ci"
    t.datetime "RespondedDate"
    t.string   "Response"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.string   "Type",               limit: 50
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["EventId"], name: "CSIX_EventId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RelationId"], name: "CSIX_RelationId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Document", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "FolderId",           limit: 18,         collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.string   "DeveloperName",      limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.string   "ContentType",        limit: 120
    t.string   "Type",               limit: 40
    t.boolean  "IsPublic"
    t.integer  "BodyLength"
    t.text     "Body",               limit: 4294967295, collation: "latin2_general_ci"
    t.string   "Url"
    t.string   "Description"
    t.string   "Keywords"
    t.boolean  "IsInternalUseOnly"
    t.string   "AuthorId",           limit: 18,         collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,         collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,         collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsBodySearchable"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AuthorId"], name: "CSIX_AuthorId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["FolderId"], name: "CSIX_FolderId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "DocumentAttachmentMap", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "DocumentId",         limit: 18, collation: "latin2_general_ci"
    t.integer  "DocumentSequence"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["DocumentId"], name: "CSIX_DocumentId", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
  end

  create_table "Domain", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "DomainType",           limit: 40
    t.text     "Domain",               limit: 65535
    t.boolean  "OptionsExternalHttps"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "DomainSite", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "DomainId",           limit: 18, collation: "latin2_general_ci"
    t.string   "SiteId",             limit: 18, collation: "latin2_general_ci"
    t.string   "PathPrefix"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["DomainId"], name: "CSIX_DomainId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SiteId"], name: "CSIX_SiteId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "DuplicateRecordItem", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "DuplicateRecordSetId", limit: 18, collation: "latin2_general_ci"
    t.string   "RecordId",             limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["DuplicateRecordSetId"], name: "CSIX_DuplicateRecordSetId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RecordId"], name: "CSIX_RecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "DuplicateRecordSet", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "DuplicateRuleId",    limit: 18, collation: "latin2_general_ci"
    t.integer  "RecordCount"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["DuplicateRuleId"], name: "CSIX_DuplicateRuleId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "DuplicateRule", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "SobjectType",        limit: 40
    t.string   "DeveloperName",      limit: 80
    t.string   "Language",           limit: 40
    t.string   "MasterLabel",        limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsActive"
    t.string   "SobjectSubtype"
    t.datetime "LastViewedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "EmailCapture", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,         collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,         collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsActive"
    t.string   "ToPattern"
    t.string   "FromPattern"
    t.string   "Sender"
    t.string   "Recipient"
    t.datetime "CaptureDate"
    t.integer  "RawMessageLength"
    t.text     "RawMessage",         limit: 4294967295, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "EmailDomainKey", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Selector",           limit: 63
    t.string   "Domain"
    t.string   "DomainMatch"
    t.boolean  "IsActive"
    t.text     "PublicKey",          limit: 16777215
    t.text     "PrivateKey",         limit: 16777215
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "EmailMessage", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",              limit: 18,       collation: "latin2_general_ci"
    t.string   "ActivityId",            limit: 18,       collation: "latin2_general_ci"
    t.string   "CreatedById",           limit: 18,       collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",      limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.text     "TextBody",              limit: 16777215
    t.text     "HtmlBody",              limit: 16777215
    t.text     "Headers",               limit: 16777215
    t.text     "Subject",               limit: 65535
    t.text     "FromName",              limit: 65535
    t.text     "FromAddress",           limit: 65535
    t.string   "ValidatedFromAddress"
    t.text     "ToAddress",             limit: 65535
    t.text     "CcAddress",             limit: 65535
    t.text     "BccAddress",            limit: 65535
    t.boolean  "Incoming"
    t.boolean  "HasAttachment"
    t.string   "Status",                limit: 40
    t.datetime "MessageDate"
    t.boolean  "IsDeleted"
    t.string   "ReplyToEmailMessageId", limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsExternallyVisible"
    t.string   "MessageIdentifier"
    t.string   "ThreadIdentifier"
    t.boolean  "IsClientManaged"
    t.string   "RelatedToId",           limit: 18,       collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ActivityId"], name: "CSIX_ActivityId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedToId"], name: "CSIX_RelatedToId", using: :btree
    t.index ["ReplyToEmailMessageId"], name: "CSIX_ReplyToEmailMessageId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "EmailMessageRelation", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "EmailMessageId",     limit: 18, collation: "latin2_general_ci"
    t.string   "RelationId",         limit: 18, collation: "latin2_general_ci"
    t.string   "RelationType",       limit: 40
    t.string   "RelationAddress"
    t.string   "RelationObjectType", limit: 50
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["EmailMessageId"], name: "CSIX_EmailMessageId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["RelationId"], name: "CSIX_RelationId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "EmailServicesAddress", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsActive"
    t.string   "LocalPart",          limit: 64
    t.string   "EmailDomainName"
    t.text     "AuthorizedSenders",  limit: 65535
    t.string   "RunAsUserId",        limit: 18,    collation: "latin2_general_ci"
    t.string   "FunctionId",         limit: 18,    collation: "latin2_general_ci"
    t.string   "DeveloperName",      limit: 25
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["FunctionId"], name: "CSIX_FunctionId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RunAsUserId"], name: "CSIX_RunAsUserId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "EmailServicesFunction", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsActive"
    t.string   "FunctionName",                limit: 64
    t.text     "AuthorizedSenders",           limit: 65535
    t.boolean  "IsAuthenticationRequired"
    t.boolean  "IsTlsRequired"
    t.string   "AttachmentOption",            limit: 40
    t.string   "ApexClassId",                 limit: 18,    collation: "latin2_general_ci"
    t.string   "OverLimitAction",             limit: 40
    t.string   "FunctionInactiveAction",      limit: 40
    t.string   "AddressInactiveAction",       limit: 40
    t.string   "AuthenticationFailureAction", limit: 40
    t.string   "AuthorizationFailureAction",  limit: 40
    t.boolean  "IsErrorRoutingEnabled"
    t.text     "ErrorRoutingAddress",         limit: 65535
    t.boolean  "IsTextAttachmentsAsBinary"
    t.string   "CreatedById",                 limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",            limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ApexClassId"], name: "CSIX_ApexClassId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "EmailStatus", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "TaskId",             limit: 18, collation: "latin2_general_ci"
    t.string   "WhoId",              limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.integer  "TimesOpened"
    t.datetime "FirstOpenDate"
    t.datetime "LastOpenDate"
    t.string   "EmailTemplateName",  limit: 80
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["TaskId"], name: "CSIX_TaskId", using: :btree
    t.index ["WhoId"], name: "CSIX_WhoId", using: :btree
  end

  create_table "EmailTemplate", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",               limit: 80
    t.string   "DeveloperName",      limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.string   "OwnerId",            limit: 18,                                collation: "latin2_general_ci"
    t.string   "FolderId",           limit: 18,                                collation: "latin2_general_ci"
    t.string   "BrandTemplateId",    limit: 18,                                collation: "latin2_general_ci"
    t.string   "TemplateStyle",      limit: 40
    t.boolean  "IsActive"
    t.string   "TemplateType",       limit: 40
    t.string   "Encoding",           limit: 40
    t.text     "Description",        limit: 65535
    t.string   "Subject"
    t.text     "HtmlValue",          limit: 16777215
    t.text     "Body",               limit: 16777215
    t.integer  "TimesUsed"
    t.datetime "LastUsedDate"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,                                collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,                                collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.decimal  "ApiVersion",                          precision: 20, scale: 3
    t.text     "Markup",             limit: 16777215
    t.string   "UiType",             limit: 40
    t.string   "RelatedEntityType",  limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["BrandTemplateId"], name: "CSIX_BrandTemplateId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["FolderId"], name: "CSIX_FolderId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "EmbeddedServiceDetail", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "DurableId"
    t.string   "Site",                          limit: 18
    t.string   "PrimaryColor"
    t.string   "SecondaryColor"
    t.string   "ContrastPrimaryColor"
    t.string   "ContrastInvertedColor"
    t.string   "NavBarColor"
    t.string   "Font"
    t.boolean  "IsLiveAgentEnabled"
    t.boolean  "IsFieldServiceEnabled"
    t.boolean  "IsPrechatEnabled"
    t.string   "CustomPrechatComponent",        limit: 18
    t.string   "AvatarImg"
    t.string   "SmallCompanyLogoImg"
    t.string   "PrechatBackgroundImg"
    t.string   "WaitingStateBackgroundImg"
    t.string   "HeaderBackgroundImg"
    t.string   "FontSize"
    t.boolean  "ShouldShowNewAppointment"
    t.boolean  "ShouldShowExistingAppointment"
    t.string   "FlowDeveloperName",             limit: 80
    t.string   "ModifyApptBookingFlowName",     limit: 80
    t.string   "CancelApptBookingFlowName",     limit: 80
    t.string   "FieldServiceHomeImg"
    t.string   "FieldServiceLogoImg"
    t.string   "FieldServiceConfirmCardImg"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "EngagementHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.string   "WhoId",              limit: 18, collation: "latin2_general_ci"
    t.string   "WhatId",             limit: 18, collation: "latin2_general_ci"
    t.datetime "ActivityDate"
    t.boolean  "IsDeleted"
    t.string   "ActivityType",       limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "EntityParticle", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "DurableId"
    t.string   "QualifiedApiName",           limit: 70
    t.string   "EntityDefinitionId",         limit: 70
    t.string   "FieldDefinitionId",          limit: 70
    t.string   "NamespacePrefix",            limit: 15
    t.string   "DeveloperName",              limit: 40
    t.string   "MasterLabel",                limit: 40
    t.string   "Label",                      limit: 40
    t.integer  "Length"
    t.string   "DataType",                   limit: 40
    t.string   "ServiceDataTypeId",          limit: 70
    t.string   "ValueTypeId",                limit: 70
    t.string   "ExtraTypeInfo",              limit: 150
    t.boolean  "IsAutonumber"
    t.integer  "ByteLength"
    t.boolean  "IsCaseSensitive"
    t.boolean  "IsUnique"
    t.boolean  "IsCreatable"
    t.boolean  "IsUpdatable"
    t.boolean  "IsDefaultedOnCreate"
    t.boolean  "IsWriteRequiresMasterRead"
    t.boolean  "IsCalculated"
    t.boolean  "IsHighScaleNumber"
    t.boolean  "IsHtmlFormatted"
    t.boolean  "IsNameField"
    t.boolean  "IsNillable"
    t.boolean  "IsPermissionable"
    t.boolean  "IsEncrypted"
    t.integer  "Digits"
    t.string   "InlineHelpText",             limit: 150
    t.string   "RelationshipName",           limit: 150
    t.string   "ReferenceTargetField",       limit: 150
    t.string   "Name",                       limit: 150
    t.string   "Mask",                       limit: 150
    t.string   "MaskType",                   limit: 150
    t.boolean  "IsWorkflowFilterable"
    t.boolean  "IsCompactLayoutable"
    t.integer  "Precision2"
    t.integer  "Scale"
    t.boolean  "IsFieldHistoryTracked"
    t.boolean  "IsApiFilterable"
    t.boolean  "IsApiSortable"
    t.boolean  "IsApiGroupable"
    t.boolean  "IsListVisible"
    t.boolean  "IsLayoutable"
    t.boolean  "IsDependentPicklist"
    t.boolean  "IsDeprecatedAndHidden"
    t.boolean  "IsDisplayLocationInDecimal"
    t.string   "DefaultValueFormula",        limit: 150
    t.boolean  "IsIdLookup"
    t.boolean  "IsNamePointing"
    t.integer  "RelationshipOrder"
    t.string   "ReferenceTo",                limit: 16
    t.boolean  "IsComponent"
    t.boolean  "IsCompound"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "EntitySubscription", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "SubscriberId",       limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SubscriberId"], name: "CSIX_SubscriberId", using: :btree
  end

  create_table "Event", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "WhoId",                                     limit: 18,       collation: "latin2_general_ci"
    t.string   "WhatId",                                    limit: 18,       collation: "latin2_general_ci"
    t.string   "Subject"
    t.string   "Location"
    t.boolean  "IsAllDayEvent"
    t.datetime "ActivityDateTime"
    t.date     "ActivityDate"
    t.integer  "DurationInMinutes"
    t.datetime "StartDateTime"
    t.datetime "EndDateTime"
    t.text     "Description",                               limit: 16777215
    t.string   "AccountId",                                 limit: 18,       collation: "latin2_general_ci"
    t.string   "OwnerId",                                   limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsPrivate"
    t.string   "ShowAs",                                    limit: 40
    t.boolean  "IsDeleted"
    t.boolean  "IsChild"
    t.boolean  "IsGroupEvent"
    t.string   "GroupEventType",                            limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",                               limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                          limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsArchived"
    t.string   "RecurrenceActivityId",                      limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsRecurrence"
    t.datetime "RecurrenceStartDateTime"
    t.date     "RecurrenceEndDateOnly"
    t.string   "RecurrenceTimeZoneSidKey",                  limit: 40
    t.string   "RecurrenceType",                            limit: 40
    t.integer  "RecurrenceInterval"
    t.integer  "RecurrenceDayOfWeekMask"
    t.integer  "RecurrenceDayOfMonth"
    t.string   "RecurrenceInstance",                        limit: 40
    t.string   "RecurrenceMonthOfYear",                     limit: 40
    t.datetime "ReminderDateTime"
    t.boolean  "IsReminderSet"
    t.string   "EventSubtype",                              limit: 40
    t.string   "ScheduleOnce__Cancel_reschedule_reason__c"
    t.string   "ScheduleOnce__Event_status__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["RecurrenceActivityId"], name: "CSIX_RecurrenceActivityId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["WhatId"], name: "CSIX_WhatId", using: :btree
    t.index ["WhoId"], name: "CSIX_WhoId", using: :btree
  end

  create_table "EventBusSubscriber", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ExternalId"
    t.string   "Name",               limit: 80
    t.string   "Type",               limit: 80
    t.string   "Topic",              limit: 80
    t.integer  "Position"
    t.integer  "Tip"
    t.string   "Status"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "EventFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "EventLogFile", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,                                  collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,                                  collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "EventType"
    t.datetime "LogDate"
    t.bigint   "LogFileLength"
    t.string   "LogFileContentType"
    t.decimal  "ApiVersion",                            precision: 20, scale: 3
    t.text     "LogFileFieldNames",  limit: 65535
    t.text     "LogFileFieldTypes",  limit: 65535
    t.text     "LogFile",            limit: 4294967295,                          collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "EventRelation", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "RelationId",         limit: 18, collation: "latin2_general_ci"
    t.string   "EventId",            limit: 18, collation: "latin2_general_ci"
    t.string   "Status",             limit: 40
    t.datetime "RespondedDate"
    t.string   "Response"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["EventId"], name: "CSIX_EventId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RelationId"], name: "CSIX_RelationId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ExternalDataSource", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",       limit: 80
    t.string   "Language",            limit: 40
    t.string   "MasterLabel",         limit: 80
    t.string   "NamespacePrefix",     limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",         limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",    limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Type"
    t.text     "Endpoint",            limit: 65535
    t.string   "Repository"
    t.boolean  "IsWritable"
    t.string   "PrincipalType"
    t.string   "Protocol"
    t.string   "AuthProviderId",      limit: 18,    collation: "latin2_general_ci"
    t.string   "LargeIconId",         limit: 18,    collation: "latin2_general_ci"
    t.string   "SmallIconId",         limit: 18,    collation: "latin2_general_ci"
    t.text     "CustomConfiguration", limit: 65535
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AuthProviderId"], name: "CSIX_AuthProviderId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LargeIconId"], name: "CSIX_LargeIconId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SmallIconId"], name: "CSIX_SmallIconId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ExternalDataUserAuth", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ExternalDataSourceId", limit: 18,    collation: "latin2_general_ci"
    t.string   "UserId",               limit: 18,    collation: "latin2_general_ci"
    t.string   "Protocol"
    t.string   "Username"
    t.text     "Password",             limit: 65535
    t.string   "AuthProviderId",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AuthProviderId"], name: "CSIX_AuthProviderId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["ExternalDataSourceId"], name: "CSIX_ExternalDataSourceId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "ExternalSocialAccount", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",            limit: 80
    t.string   "Language",                 limit: 40
    t.string   "MasterLabel",              limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",              limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",         limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ExternalAccountId"
    t.string   "Username"
    t.string   "Provider"
    t.string   "ProviderUserId"
    t.string   "ExternalPictureURL"
    t.boolean  "IsActive"
    t.string   "SocialPropertyId"
    t.boolean  "IsAuthenticated"
    t.string   "TopicId"
    t.string   "DataSourceId"
    t.string   "RuleId"
    t.boolean  "IsDataSourceActive"
    t.string   "UniqueName"
    t.string   "DefaultResponseAccountId", limit: 18, collation: "latin2_general_ci"
    t.string   "ProfileUrl"
    t.string   "AuthorizedBy"
    t.boolean  "IsCaseCreationEnabled"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["DefaultResponseAccountId"], name: "CSIX_DefaultResponseAccountId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "FeedAttachment", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "FeedEntityId",       limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "RecordId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Title"
    t.text     "Value",              limit: 65535
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["FeedEntityId"], name: "CSIX_FeedEntityId", using: :btree
    t.index ["RecordId"], name: "CSIX_RecordId", using: :btree
  end

  create_table "FeedComment", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "FeedItemId",         limit: 18,    collation: "latin2_general_ci"
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "SystemModstamp"
    t.integer  "Revision"
    t.string   "LastEditById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastEditDate"
    t.text     "CommentBody",        limit: 65535
    t.boolean  "IsDeleted"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.string   "CommentType",        limit: 40
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.boolean  "IsRichText"
    t.boolean  "IsVerified"
    t.string   "Status",             limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["FeedItemId"], name: "CSIX_FeedItemId", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastEditById"], name: "CSIX_LastEditById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "FeedItem", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "Revision"
    t.string   "LastEditById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastEditDate"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.string   "BestCommentId",      limit: 18,    collation: "latin2_general_ci"
    t.boolean  "HasContent"
    t.boolean  "HasLink"
    t.boolean  "HasFeedEntity"
    t.boolean  "HasVerifiedComment"
    t.string   "Status",             limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["BestCommentId"], name: "CSIX_BestCommentId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastEditById"], name: "CSIX_LastEditById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "FeedLike", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "FeedItemId",         limit: 18, collation: "latin2_general_ci"
    t.string   "FeedEntityId",       limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.string   "InsertedById",       limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["FeedEntityId"], name: "CSIX_FeedEntityId", using: :btree
    t.index ["FeedItemId"], name: "CSIX_FeedItemId", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
  end

  create_table "FeedPollChoice", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "FeedItemId",         limit: 18,  collation: "latin2_general_ci"
    t.integer  "Position"
    t.string   "ChoiceBody",         limit: 100
    t.string   "CreatedById",        limit: 18,  collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["FeedItemId"], name: "CSIX_FeedItemId", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
  end

  create_table "FeedPollVote", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "FeedItemId",         limit: 18, collation: "latin2_general_ci"
    t.string   "ChoiceId",           limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ChoiceId"], name: "CSIX_ChoiceId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["FeedItemId"], name: "CSIX_FeedItemId", using: :btree
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
  end

  create_table "FeedRevision", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.string   "FeedEntityId",       limit: 18,    collation: "latin2_general_ci"
    t.integer  "Revision"
    t.string   "Action",             limit: 40
    t.string   "EditedAttribute",    limit: 40
    t.text     "Value",              limit: 65535
    t.boolean  "IsValueRichText"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["FeedEntityId"], name: "CSIX_FeedEntityId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "FeedSignal", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "FeedItemId",         limit: 18, collation: "latin2_general_ci"
    t.string   "FeedEntityId",       limit: 18, collation: "latin2_general_ci"
    t.integer  "SignalValue"
    t.string   "SignalType",         limit: 40
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.string   "InsertedById",       limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["FeedEntityId"], name: "CSIX_FeedEntityId", using: :btree
    t.index ["FeedItemId"], name: "CSIX_FeedItemId", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
  end

  create_table "FeedTrackedChange", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "FeedItemId",         limit: 18,  collation: "latin2_general_ci"
    t.string   "FieldName",          limit: 120
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["FeedItemId"], name: "CSIX_FeedItemId", using: :btree
  end

  create_table "FieldDefinition", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "DurableId"
    t.string   "QualifiedApiName",             limit: 70
    t.string   "EntityDefinitionId",           limit: 70
    t.string   "NamespacePrefix",              limit: 15
    t.string   "DeveloperName",                limit: 40
    t.string   "MasterLabel",                  limit: 40
    t.string   "Label",                        limit: 40
    t.integer  "Length"
    t.string   "DataType",                     limit: 40
    t.string   "ServiceDataTypeId",            limit: 70
    t.string   "ValueTypeId",                  limit: 70
    t.string   "ExtraTypeInfo",                limit: 150
    t.boolean  "IsCalculated"
    t.boolean  "IsHighScaleNumber"
    t.boolean  "IsHtmlFormatted"
    t.boolean  "IsNameField"
    t.boolean  "IsNillable"
    t.boolean  "IsWorkflowFilterable"
    t.boolean  "IsCompactLayoutable"
    t.integer  "Precision2"
    t.integer  "Scale"
    t.boolean  "IsFieldHistoryTracked"
    t.boolean  "IsIndexed"
    t.boolean  "IsApiFilterable"
    t.boolean  "IsApiSortable"
    t.boolean  "IsListFilterable"
    t.boolean  "IsListSortable"
    t.boolean  "IsApiGroupable"
    t.boolean  "IsListVisible"
    t.string   "ControllingFieldDefinitionId", limit: 150
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",             limit: 18,    collation: "latin2_general_ci"
    t.string   "PublisherId",                  limit: 70
    t.string   "RunningUserFieldAccessId",     limit: 150
    t.string   "RelationshipName",             limit: 80
    t.string   "ReferenceTo",                  limit: 16
    t.string   "ReferenceTargetField",         limit: 80
    t.boolean  "IsCompound"
    t.boolean  "IsSearchPrefilterable"
    t.boolean  "IsPolymorphicForeignKey"
    t.string   "BusinessOwnerId",              limit: 18,    collation: "latin2_general_ci"
    t.string   "BusinessStatus",               limit: 40
    t.string   "SecurityClassification"
    t.text     "Description",                  limit: 65535
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["BusinessOwnerId"], name: "CSIX_BusinessOwnerId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
  end

  create_table "FieldPermissions", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,  collation: "latin2_general_ci"
    t.string   "SobjectType",        limit: 80
    t.string   "Field",              limit: 160
    t.boolean  "PermissionsEdit"
    t.boolean  "PermissionsRead"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "FileSearchActivity", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,                           collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,                           collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "SearchTerm",         limit: 100
    t.date     "QueryDate"
    t.integer  "CountQueries"
    t.integer  "CountUsers"
    t.decimal  "AvgNumResults",                  precision: 20, scale: 3
    t.string   "Period"
    t.string   "QueryLanguage"
    t.decimal  "ClickRank",                      precision: 20, scale: 3
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "FiscalYearSettings", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "PeriodId",           limit: 18, collation: "latin2_general_ci"
    t.date     "StartDate"
    t.date     "EndDate"
    t.string   "Name",               limit: 80
    t.boolean  "IsStandardYear"
    t.string   "YearType",           limit: 40
    t.string   "QuarterLabelScheme", limit: 40
    t.string   "PeriodLabelScheme",  limit: 40
    t.string   "WeekLabelScheme",    limit: 40
    t.string   "QuarterPrefix",      limit: 40
    t.string   "PeriodPrefix",       limit: 40
    t.integer  "WeekStartDay"
    t.string   "Description"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["PeriodId"], name: "CSIX_PeriodId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "FlexQueueItem", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "FlexQueueItemId"
    t.string   "JobType"
    t.string   "AsyncApexJobId",     limit: 18, collation: "latin2_general_ci"
    t.integer  "JobPosition"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AsyncApexJobId"], name: "CSIX_AsyncApexJobId", using: :btree
  end

  create_table "FlowInterview", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",            limit: 18,    collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "CurrentElement",     limit: 100
    t.text     "InterviewLabel",     limit: 65535
    t.text     "PauseLabel",         limit: 65535
    t.string   "Guid"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "FlowInterviewShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccessLevel",        limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "FlowRecordRelation", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "RelatedRecordId",    limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "FlowStageRelation", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.integer  "StageOrder"
    t.string   "StageType"
    t.text     "StageLabel",         limit: 65535
    t.string   "FlexIndex"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Folder", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",               limit: 40
    t.string   "DeveloperName",      limit: 80
    t.string   "AccessType",         limit: 40
    t.boolean  "IsReadonly"
    t.string   "Type",               limit: 40
    t.string   "NamespacePrefix",    limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "FolderedContentDocument", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsFolder"
    t.string   "ContentDocumentId",     limit: 18, collation: "latin2_general_ci"
    t.string   "ParentContentFolderId", limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Title"
    t.string   "FileType",              limit: 20
    t.integer  "ContentSize"
    t.string   "FileExtension",         limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",           limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",      limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentDocumentId"], name: "CSIX_ContentDocumentId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentContentFolderId"], name: "CSIX_ParentContentFolderId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ForecastShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UserRoleId",         limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccessLevel",        limit: 40
    t.boolean  "CanSubmit"
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
    t.index ["UserRoleId"], name: "CSIX_UserRoleId", using: :btree
  end

  create_table "GrantedByLicense", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",            limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",       limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "PermissionSetLicenseId", limit: 18, collation: "latin2_general_ci"
    t.string   "CustomPermissionId",     limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CustomPermissionId"], name: "CSIX_CustomPermissionId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["PermissionSetLicenseId"], name: "CSIX_PermissionSetLicenseId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Group2", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",                   limit: 40
    t.string   "DeveloperName",          limit: 80
    t.string   "RelatedId",              limit: 18, collation: "latin2_general_ci"
    t.string   "Type",                   limit: 40
    t.string   "Email"
    t.string   "OwnerId",                limit: 18, collation: "latin2_general_ci"
    t.boolean  "DoesSendEmailToMembers"
    t.boolean  "DoesIncludeBosses"
    t.datetime "CreatedDate"
    t.string   "CreatedById",            limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",       limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["RelatedId"], name: "CSIX_RelatedId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "GroupMember", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "GroupId",            limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["GroupId"], name: "CSIX_GroupId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "Holiday", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",                    limit: 80
    t.string   "Description",             limit: 100
    t.boolean  "IsAllDay"
    t.date     "ActivityDate"
    t.integer  "StartTimeInMinutes"
    t.integer  "EndTimeInMinutes"
    t.datetime "CreatedDate"
    t.string   "CreatedById",             limit: 18,  collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",        limit: 18,  collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsRecurrence"
    t.date     "RecurrenceStartDate"
    t.date     "RecurrenceEndDateOnly"
    t.string   "RecurrenceType",          limit: 40
    t.integer  "RecurrenceInterval"
    t.integer  "RecurrenceDayOfWeekMask"
    t.integer  "RecurrenceDayOfMonth"
    t.string   "RecurrenceInstance",      limit: 40
    t.string   "RecurrenceMonthOfYear",   limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Idea", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Title"
    t.string   "RecordTypeId",         limit: 18,                                collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,                                collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18,                                collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "CommunityId",          limit: 18,                                collation: "latin2_general_ci"
    t.text     "Body",                 limit: 16777215
    t.integer  "NumComments"
    t.decimal  "VoteScore",                             precision: 20, scale: 6
    t.bigint   "VoteTotal"
    t.text     "Categories",           limit: 65535
    t.string   "Status",               limit: 40
    t.datetime "LastCommentDate"
    t.string   "LastCommentId",        limit: 18,                                collation: "latin2_general_ci"
    t.string   "ParentIdeaId",         limit: 18,                                collation: "latin2_general_ci"
    t.boolean  "IsHtml"
    t.boolean  "IsMerged"
    t.string   "CreatorFullPhotoUrl"
    t.string   "CreatorSmallPhotoUrl"
    t.string   "CreatorName",          limit: 121
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CommunityId"], name: "CSIX_CommunityId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastCommentId"], name: "CSIX_LastCommentId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentIdeaId"], name: "CSIX_ParentIdeaId", using: :btree
    t.index ["RecordTypeId"], name: "CSIX_RecordTypeId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "IdeaComment", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "IdeaId",               limit: 18,    collation: "latin2_general_ci"
    t.string   "CommunityId",          limit: 18,    collation: "latin2_general_ci"
    t.text     "CommentBody",          limit: 65535
    t.string   "CreatedById",          limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.boolean  "IsHtml"
    t.string   "CreatorFullPhotoUrl"
    t.string   "CreatorSmallPhotoUrl"
    t.string   "CreatorName",          limit: 121
    t.integer  "UpVotes"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CommunityId"], name: "CSIX_CommunityId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IdeaId"], name: "CSIX_IdeaId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "IdpEventLog", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "InitiatedBy",         limit: 40
    t.datetime "Timestamp"
    t.string   "ErrorCode",           limit: 40
    t.text     "SamlEntityUrl",       limit: 65535
    t.string   "UserId",              limit: 18,    collation: "latin2_general_ci"
    t.string   "AuthSessionId",       limit: 18,    collation: "latin2_general_ci"
    t.string   "SsoType",             limit: 40
    t.string   "AppId",               limit: 18,    collation: "latin2_general_ci"
    t.text     "IdentityUsed",        limit: 65535
    t.boolean  "OptionsHasLogoutUrl"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AppId"], name: "CSIX_AppId", using: :btree
    t.index ["AuthSessionId"], name: "CSIX_AuthSessionId", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "InstalledMobileApp", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",            limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",       limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Status"
    t.string   "UserId",                 limit: 18, collation: "latin2_general_ci"
    t.string   "ConnectedApplicationId", limit: 18, collation: "latin2_general_ci"
    t.string   "Version"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ConnectedApplicationId"], name: "CSIX_ConnectedApplicationId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "IntelligenceQuestion__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",            limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",               limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "KnowledgeableUser", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "TopicId",            limit: 18, collation: "latin2_general_ci"
    t.integer  "RawRank"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["TopicId"], name: "CSIX_TopicId", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "Lead2", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "MasterRecordId",                              limit: 18,                                 collation: "latin2_general_ci"
    t.string   "LastName",                                    limit: 80
    t.string   "FirstName",                                   limit: 40
    t.string   "Salutation",                                  limit: 40
    t.string   "Name",                                        limit: 121
    t.string   "Title",                                       limit: 128
    t.text     "Company",                                     limit: 65535
    t.text     "Street",                                      limit: 65535
    t.string   "City",                                        limit: 40
    t.string   "State",                                       limit: 80
    t.string   "PostalCode",                                  limit: 20
    t.string   "Country",                                     limit: 80
    t.decimal  "Latitude",                                                     precision: 20, scale: 17
    t.decimal  "Longitude",                                                    precision: 20, scale: 17
    t.string   "GeocodeAccuracy",                             limit: 40
    t.string   "Address",                                     limit: 16
    t.string   "Phone",                                       limit: 40
    t.string   "MobilePhone",                                 limit: 40
    t.string   "Email",                                       limit: 80
    t.text     "Website",                                     limit: 65535
    t.text     "PhotoUrl",                                    limit: 65535
    t.text     "Description",                                 limit: 16777215
    t.string   "LeadSource",                                  limit: 40
    t.string   "Status",                                      limit: 40
    t.string   "Industry",                                    limit: 40
    t.string   "Rating",                                      limit: 40
    t.bigint   "AnnualRevenue"
    t.integer  "NumberOfEmployees"
    t.string   "OwnerId",                                     limit: 18,                                 collation: "latin2_general_ci"
    t.boolean  "IsConverted"
    t.date     "ConvertedDate"
    t.string   "ConvertedAccountId",                          limit: 18,                                 collation: "latin2_general_ci"
    t.string   "ConvertedContactId",                          limit: 18,                                 collation: "latin2_general_ci"
    t.string   "ConvertedOpportunityId",                      limit: 18,                                 collation: "latin2_general_ci"
    t.boolean  "IsUnreadByOwner"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                                 limit: 18,                                 collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                            limit: 18,                                 collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.date     "LastActivityDate"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "JigsawContactId",                             limit: 20
    t.string   "CompanyDunsNumber",                           limit: 9
    t.text     "EmailBouncedReason",                          limit: 65535
    t.datetime "EmailBouncedDate"
    t.text     "AE_Name__c",                                  limit: 65535
    t.bigint   "Storage_Budget_Amount__c"
    t.text     "Short_Note__c",                               limit: 16777215
    t.text     "Storage_Hardware_Vendors__c",                 limit: 65535
    t.text     "Virtualization_Platforms__c",                 limit: 65535
    t.text     "Networking_Hardware_Vendor__c",               limit: 65535
    t.text     "Server_Hardware_Vendor__c",                   limit: 65535
    t.boolean  "Decision_Maker__c"
    t.bigint   "of_Network_Users__c"
    t.string   "Main_Phone__c",                               limit: 40
    t.string   "List_Name__c",                                limit: 50
    t.text     "Prospect_Status__c",                          limit: 65535
    t.text     "Contact_Role__c",                             limit: 65535
    t.text     "Project_Timeline__c",                         limit: 65535
    t.text     "Project_Type__c",                             limit: 65535
    t.decimal  "Prospect_Score__c",                                            precision: 20, scale: 4
    t.bigint   "Follow_Up_Value__c"
    t.bigint   "Open_Value__c"
    t.bigint   "Contact_Role_Value__c"
    t.bigint   "Project_Type_Value__c"
    t.bigint   "Project_Timeline_Value__c"
    t.bigint   "Vendor_Info_Value__c"
    t.boolean  "User_Created__c"
    t.bigint   "User_Created_Value__c"
    t.string   "iSell__OSKeyID__c",                           limit: 16
    t.text     "Valid_Contact__c",                            limit: 65535
    t.boolean  "Direct_Dial__c"
    t.text     "Action_Outcome__c",                           limit: 65535
    t.text     "Storage_Primary_Vendor__c",                   limit: 65535
    t.text     "Subscribed_to_List__c",                       limit: 65535
    t.text     "Storage_Primary_Solution_Type__c",            limit: 65535
    t.text     "Storage_Primary_Product__c",                  limit: 65535
    t.text     "Storage_Primary_Product_Model__c",            limit: 65535
    t.text     "Storage_Primary_Solution_Size_TBs__c",        limit: 65535
    t.text     "Storage_Primary_Solution_Age__c",             limit: 65535
    t.text     "Storage_of_Locations__c",                     limit: 65535
    t.text     "Storage_Growth_Rate_Annual__c",               limit: 65535
    t.text     "Storage_Virtualized__c",                      limit: 65535
    t.text     "Storage_Secondary_Vendor__c",                 limit: 65535
    t.text     "Storage_Secondary_Vendor_Solution_Type__c",   limit: 65535
    t.text     "Storage_Secondary_Product__c",                limit: 65535
    t.text     "Storage_Secondary_Product_Model__c",          limit: 65535
    t.text     "Storage_Secondary_Solution_Size_TBs__c",      limit: 65535
    t.text     "Storage_Secondary_Solution_Age__c",           limit: 65535
    t.text     "Storage_Disaster_Recovery_Vendor__c",         limit: 65535
    t.text     "Storage_Disaster_Recovery_Solution__c",       limit: 65535
    t.text     "Storage_Disaster_Recovery_Solution_Age__c",   limit: 65535
    t.text     "Storage_Cloud_Vendor__c",                     limit: 65535
    t.text     "Storage_Cloud_On_Off_Premise__c",             limit: 65535
    t.text     "Storage_Cloud_Type__c",                       limit: 65535
    t.text     "Server_Primary_Vendor__c",                    limit: 65535
    t.text     "Server_Primary_Operating_System__c",          limit: 65535
    t.bigint   "Server_of_Physical_Servers__c"
    t.bigint   "Server_of_Virtual_Servers__c"
    t.text     "Server_Primary_Solution_Age__c",              limit: 65535
    t.bigint   "Server_of_Locations__c"
    t.text     "Server_Secondary_Vendor__c",                  limit: 65535
    t.text     "Server_Secondary_Operating_System__c",        limit: 65535
    t.text     "Server_Secondary_Solution_Age__c",            limit: 65535
    t.text     "Networking_Switch_Vendor__c",                 limit: 65535
    t.text     "Networking_Switch_Solution_Age__c",           limit: 65535
    t.bigint   "Networking_of_Users__c"
    t.bigint   "Networking_of_Locations__c"
    t.text     "Networking_Firewall_Vendor__c",               limit: 65535
    t.text     "Networking_Firewall_Solution_Age__c",         limit: 65535
    t.text     "Application_Databases__c",                    limit: 65535
    t.text     "Applications_Development_Programming__c",     limit: 65535
    t.text     "Extension__c",                                limit: 65535
    t.text     "Has_Authority__c",                            limit: 65535
    t.text     "Pr__c",                                       limit: 65535
    t.text     "Hardware_Refresh_Cycle__c",                   limit: 65535
    t.text     "Fiscal_Year_End__c",                          limit: 65535
    t.text     "Virtualization_Platform__c",                  limit: 65535
    t.text     "Infrastructure_Management_In_Place__c",       limit: 65535
    t.text     "Infrastructure_Management_Brand__c",          limit: 65535
    t.text     "Currently_Engaged_with_Partner__c",           limit: 65535
    t.text     "Current_Engaged_Partner__c",                  limit: 65535
    t.text     "Cloud_Interest__c",                           limit: 65535
    t.text     "Cloud_Current_Environment__c",                limit: 65535
    t.text     "Cloud_Reason__c",                             limit: 16777215
    t.text     "Comment__c",                                  limit: 65535
    t.datetime "Meeting_Date_Time__c"
    t.text     "Time_Zone__c",                                limit: 65535
    t.text     "Solution_Brand__c",                           limit: 65535
    t.bigint   "Amount__c"
    t.string   "Primary_Campaign_Source__c",                  limit: 18,                                 collation: "latin2_general_ci"
    t.string   "Partner__c",                                  limit: 18,                                 collation: "latin2_general_ci"
    t.string   "Partner_Account_Assigned__c",                 limit: 18,                                 collation: "latin2_general_ci"
    t.boolean  "OTP_Approved__c"
    t.date     "Date__c"
    t.datetime "Re_schedule_Date_Time__c"
    t.text     "Confirmation_via__c",                         limit: 65535
    t.text     "Conference_Phone_Access__c",                  limit: 65535
    t.text     "Re_schedule_Reason__c",                       limit: 65535
    t.text     "Action_Outcome_Close__c",                     limit: 65535
    t.text     "Action_Outcome_Wrong_Contact__c",             limit: 65535
    t.text     "Action_Outcome_Follow_Up__c",                 limit: 65535
    t.text     "Server_Project_Budget__c",                    limit: 65535
    t.text     "Server_Has_Authority__c",                     limit: 65535
    t.text     "Server_Project_Type__c",                      limit: 65535
    t.text     "Server_Project_Timeline__c",                  limit: 65535
    t.text     "Server_Currently_Engaged_with_Partner__c",    limit: 65535
    t.text     "Server_Current_Engaged_Partner__c",           limit: 65535
    t.text     "Networking_Project_Budget__c",                limit: 65535
    t.text     "Networking_Has_Authority__c",                 limit: 65535
    t.text     "Networking_Project_Type__c",                  limit: 65535
    t.text     "Networking_Project_Timeline__c",              limit: 65535
    t.text     "Networking_Currently_Engaged_with_Partne__c", limit: 65535
    t.text     "Networking_Current_Engaged_Partner__c",       limit: 65535
    t.text     "Server_Contact_Role__c",                      limit: 65535
    t.text     "Networking_Contact_Role__c",                  limit: 65535
    t.datetime "Follow_Up_Date__c"
    t.text     "AE_Email_Address__c",                         limit: 65535
    t.boolean  "Qualified__c"
    t.string   "Closed_By_Prospect__c",                       limit: 18,                                 collation: "latin2_general_ci"
    t.string   "CloudingoAgent__ARDI__c",                     limit: 12
    t.string   "CloudingoAgent__AR__c",                       limit: 1
    t.bigint   "CloudingoAgent__AS__c"
    t.string   "CloudingoAgent__ATZ__c",                      limit: 48
    t.string   "CloudingoAgent__AV__c",                       limit: 1
    t.bigint   "CloudingoAgent__LES__c"
    t.bigint   "Server_Budget_Amount__c"
    t.bigint   "Networking_Budget_Amount__c"
    t.string   "Team_Member_First_Name__c",                   limit: 100
    t.string   "Team_Member_Last_Name__c",                    limit: 100
    t.string   "Team_Member_Title__c",                        limit: 100
    t.string   "Team_Member_Phone__c",                        limit: 40
    t.string   "Team_Member_Email__c",                        limit: 80
    t.string   "Twitter_Handle__c",                           limit: 100
    t.text     "LinkedIn_Profile__c",                         limit: 65535
    t.string   "SIC1__c",                                     limit: 25
    t.string   "SIC2__c",                                     limit: 25
    t.string   "NAICS1__c",                                   limit: 25
    t.string   "NAICS2__c",                                   limit: 25
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.string   "Note__c"
    t.string   "Attempt__c"
    t.index ["Closed_By_Prospect__c"], name: "CSIX_Closed_By_Prospect__c", using: :btree
    t.index ["ConvertedAccountId"], name: "CSIX_ConvertedAccountId", using: :btree
    t.index ["ConvertedContactId"], name: "CSIX_ConvertedContactId", using: :btree
    t.index ["ConvertedOpportunityId"], name: "CSIX_ConvertedOpportunityId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["MasterRecordId"], name: "CSIX_MasterRecordId", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["Partner_Account_Assigned__c"], name: "CSIX_Partner_Account_Assigned__c", using: :btree
    t.index ["Partner__c"], name: "CSIX_Partner__c", using: :btree
    t.index ["Primary_Campaign_Source__c"], name: "CSIX_Primary_Campaign_Source__c", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "LeadFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "LeadHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "LeadId",             limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LeadId"], name: "CSIX_LeadId", using: :btree
  end

  create_table "LeadShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "LeadId",             limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "LeadAccessLevel",    limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["LeadId"], name: "CSIX_LeadId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "LeadStatus", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "MasterLabel"
    t.string   "ApiName"
    t.integer  "SortOrder"
    t.boolean  "IsDefault"
    t.boolean  "IsConverted"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "LightningComponentBundle", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",      limit: 80
    t.string   "Language",           limit: 40
    t.string   "MasterLabel",        limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,                          collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,                          collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.decimal  "ApiVersion",                    precision: 20, scale: 3
    t.decimal  "MinVersion",                    precision: 20, scale: 3
    t.boolean  "IsExposed"
    t.string   "AvailableFor"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "LightningComponentResource", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",           limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "LightningComponentBundleId", limit: 18,       collation: "latin2_general_ci"
    t.string   "FilePath"
    t.string   "Format"
    t.text     "Source",                     limit: 16777215
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LightningComponentBundleId"], name: "CSIX_LightningComponentBundleId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "LightningToggleMetrics", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.date     "MetricsDate"
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "Action",             limit: 40
    t.datetime "SystemModstamp"
    t.integer  "RecordCount"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "LightningUsageByAppTypeMetrics", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.date     "MetricsDate"
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "AppExperience",      limit: 40
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "LightningUsageByBrowserMetrics", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.date     "MetricsDate"
    t.string   "PageName",           limit: 40
    t.string   "Browser",            limit: 40
    t.datetime "SystemModstamp"
    t.integer  "TotalCount"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "LightningUsageByPageMetrics", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.date     "MetricsDate"
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "PageName",           limit: 40
    t.datetime "SystemModstamp"
    t.integer  "TotalCount"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "ListEmail", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",            limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.text     "Subject",            limit: 65535
    t.text     "HtmlBody",           limit: 16777215
    t.text     "TextBody",           limit: 16777215
    t.string   "FromName",           limit: 121
    t.text     "FromAddress",        limit: 65535
    t.text     "ReplyToAddress",     limit: 65535
    t.string   "Status"
    t.boolean  "HasAttachment"
    t.datetime "ScheduledDate"
    t.integer  "TotalSent"
    t.string   "SentVia"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.string   "CampaignId",         limit: 18,       collation: "latin2_general_ci"
    t.index ["CampaignId"], name: "CSIX_CampaignId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ListEmailRecipientSource", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ListEmailId",        limit: 18, collation: "latin2_general_ci"
    t.string   "SourceListId",       limit: 18, collation: "latin2_general_ci"
    t.string   "SourceType"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ListEmailId"], name: "CSIX_ListEmailId", using: :btree
    t.index ["SourceListId"], name: "CSIX_SourceListId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ListEmailShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccessLevel",        limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "ListView", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",               limit: 40
    t.string   "DeveloperName",      limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.string   "SobjectType",        limit: 40
    t.boolean  "IsSoqlCompatible"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ListViewChart", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "SobjectType",        limit: 40
    t.string   "DeveloperName",      limit: 80
    t.string   "Language",           limit: 40
    t.string   "MasterLabel",        limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "OwnerId",            limit: 18, collation: "latin2_general_ci"
    t.string   "ChartType"
    t.string   "GroupingField"
    t.string   "AggregateField"
    t.string   "AggregateType"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ListViewChartInstance", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ExternalId"
    t.string   "ListViewChartId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "Label"
    t.string   "DeveloperName",      limit: 80
    t.string   "SourceEntity"
    t.string   "ListViewContextId",  limit: 18,    collation: "latin2_general_ci"
    t.string   "ChartType"
    t.boolean  "IsLastViewed"
    t.text     "DataQuery",          limit: 65535
    t.boolean  "IsEditable"
    t.boolean  "IsDeletable"
    t.string   "GroupingField"
    t.string   "AggregateField"
    t.string   "AggregateType"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ListViewChartId"], name: "CSIX_ListViewChartId", using: :btree
    t.index ["ListViewContextId"], name: "CSIX_ListViewContextId", using: :btree
  end

  create_table "LoginGeo", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,                           collation: "latin2_general_ci"
    t.string   "LastModifiedById",   limit: 18,                           collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "SystemModstamp"
    t.datetime "LoginTime"
    t.string   "CountryIso",         limit: 3
    t.string   "Country",            limit: 200
    t.decimal  "Latitude",                       precision: 20, scale: 6
    t.decimal  "Longitude",                      precision: 20, scale: 6
    t.string   "City",               limit: 200
    t.string   "PostalCode",         limit: 20
    t.string   "Subdivision",        limit: 200
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "LoginHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UserId",                  limit: 18,  collation: "latin2_general_ci"
    t.datetime "LoginTime"
    t.string   "LoginType",               limit: 40
    t.string   "SourceIp",                limit: 39
    t.string   "LoginUrl"
    t.string   "AuthenticationServiceId", limit: 18,  collation: "latin2_general_ci"
    t.string   "LoginGeoId",              limit: 18,  collation: "latin2_general_ci"
    t.string   "TlsProtocol",             limit: 40
    t.string   "CipherSuite",             limit: 40
    t.string   "Browser",                 limit: 64
    t.string   "Platform",                limit: 64
    t.string   "Status",                  limit: 128
    t.string   "Application",             limit: 64
    t.string   "ClientVersion",           limit: 64
    t.string   "ApiType",                 limit: 64
    t.string   "ApiVersion",              limit: 32
    t.string   "CountryIso",              limit: 3
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AuthenticationServiceId"], name: "CSIX_AuthenticationServiceId", using: :btree
    t.index ["LoginGeoId"], name: "CSIX_LoginGeoId", using: :btree
    t.index ["LoginTime"], name: "CSIX_LoginTime", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "LoginIp", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UsersId",            limit: 18, collation: "latin2_general_ci"
    t.string   "SourceIp",           limit: 39
    t.datetime "CreatedDate"
    t.boolean  "IsAuthenticated"
    t.datetime "ChallengeSentDate"
    t.string   "ChallengeMethod",    limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["UsersId"], name: "CSIX_UsersId", using: :btree
  end

  create_table "LookedUpFromActivity", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "AccountId",                                 limit: 18,       collation: "latin2_general_ci"
    t.string   "WhoId",                                     limit: 18,       collation: "latin2_general_ci"
    t.string   "WhatId",                                    limit: 18,       collation: "latin2_general_ci"
    t.string   "Subject",                                   limit: 80
    t.boolean  "IsTask"
    t.date     "ActivityDate"
    t.string   "OwnerId",                                   limit: 18,       collation: "latin2_general_ci"
    t.string   "Status",                                    limit: 40
    t.string   "Priority",                                  limit: 40
    t.boolean  "IsHighPriority"
    t.string   "ActivityType",                              limit: 40
    t.boolean  "IsClosed"
    t.boolean  "IsAllDayEvent"
    t.boolean  "IsVisibleInSelfService"
    t.integer  "DurationInMinutes"
    t.string   "Location",                                  limit: 80
    t.text     "Description",                               limit: 16777215
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                               limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                          limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.integer  "CallDurationInSeconds"
    t.string   "CallType",                                  limit: 40
    t.string   "CallDisposition"
    t.string   "CallObject"
    t.datetime "ReminderDateTime"
    t.boolean  "IsReminderSet"
    t.datetime "EndDateTime"
    t.datetime "StartDateTime"
    t.string   "ActivitySubtype",                           limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.string   "ScheduleOnce__Cancel_reschedule_reason__c"
    t.string   "ScheduleOnce__Event_status__c"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["WhatId"], name: "CSIX_WhatId", using: :btree
    t.index ["WhoId"], name: "CSIX_WhoId", using: :btree
  end

  create_table "Macro", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",              limit: 18,    collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.text     "Description",          limit: 65535
    t.boolean  "IsAlohaSupported"
    t.string   "StartingContext"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.boolean  "IsLightningSupported"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "MacroHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "MacroId",            limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["MacroId"], name: "CSIX_MacroId", using: :btree
  end

  create_table "MacroInstruction", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "MacroId",            limit: 18,    collation: "latin2_general_ci"
    t.string   "Operation"
    t.string   "Target"
    t.text     "Value",              limit: 65535
    t.string   "ValueRecord",        limit: 15
    t.integer  "SortOrder"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["MacroId"], name: "CSIX_MacroId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "MacroShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccessLevel",        limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "MailmergeTemplate", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name",                                     limit: 80
    t.string   "Description"
    t.string   "Filename"
    t.integer  "BodyLength"
    t.text     "Body",                                     limit: 4294967295, collation: "latin2_general_ci"
    t.datetime "LastUsedDate"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                              limit: 18,         collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                         limit: 18,         collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "SecurityOptionsAttachmentScannedForXSS"
    t.boolean  "SecurityOptionsAttachmentHasXSSThreat"
    t.boolean  "SecurityOptionsAttachmentScannedforFlash"
    t.boolean  "SecurityOptionsAttachmentHasFlash"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ManyWhoFlow__Feed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ManyWhoFlow__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",            limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",               limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "JoinUri__c"
    t.text     "StateJSON__c",       limit: 16777215
    t.string   "Step__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ManyWho__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name",               limit: 38
    t.string   "SetupOwnerId",       limit: 18,  collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,  collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,  collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Tenant_Id__c",       limit: 100
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SetupOwnerId"], name: "CSIX_SetupOwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "MatchingRule", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "SobjectType",        limit: 40
    t.string   "DeveloperName",      limit: 80
    t.string   "Language",           limit: 40
    t.string   "MasterLabel",        limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "MatchEngine"
    t.string   "BooleanFilter"
    t.string   "Description"
    t.string   "RuleStatus"
    t.string   "SobjectSubtype"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "MatchingRuleItem", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "MatchingRuleId",     limit: 18, collation: "latin2_general_ci"
    t.integer  "SortOrder"
    t.string   "Field"
    t.string   "MatchingMethod"
    t.string   "BlankValueBehavior"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["MatchingRuleId"], name: "CSIX_MatchingRuleId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "NOTIF_Notification_Rule__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",              limit: 18,                                collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",                 limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,                                collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18,                                collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "Comparator__c"
    t.boolean  "Compare_Boolean__c"
    t.datetime "Compare_Date_Time__c"
    t.date     "Compare_Date__c"
    t.string   "Compare_Email__c",     limit: 80
    t.decimal  "Compare_Number__c",                     precision: 20, scale: 6
    t.decimal  "Compare_Percent__c",                    precision: 20, scale: 6
    t.string   "Compare_Phone__c",     limit: 40
    t.text     "Compare_Text__c",      limit: 16777215
    t.string   "Compare_Type__c"
    t.string   "Compare_URL__c"
    t.string   "Field__c"
    t.boolean  "Is_Active__c"
    t.string   "Name__c"
    t.text     "Notification_Type__c", limit: 65535
    t.string   "Object_Id__c",         limit: 18
    t.string   "Object__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "NOTIF_Twillio_Credentials__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name",               limit: 38
    t.string   "SetupOwnerId",       limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Account_SID__c"
    t.string   "Auth_Token__c"
    t.string   "Phone_Number__c",    limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SetupOwnerId"], name: "CSIX_SetupOwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Name", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name"
    t.string   "LastName",           limit: 80
    t.string   "FirstName",          limit: 40
    t.string   "Type",               limit: 40
    t.string   "Alias",              limit: 8
    t.string   "UserRoleId",         limit: 18, collation: "latin2_general_ci"
    t.string   "RecordTypeId",       limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsActive"
    t.string   "ProfileId",          limit: 18, collation: "latin2_general_ci"
    t.string   "Title",              limit: 80
    t.string   "Email",              limit: 80
    t.string   "Phone",              limit: 40
    t.string   "NameOrAlias",        limit: 80
    t.string   "Username",           limit: 80
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ProfileId"], name: "CSIX_ProfileId", using: :btree
    t.index ["RecordTypeId"], name: "CSIX_RecordTypeId", using: :btree
    t.index ["UserRoleId"], name: "CSIX_UserRoleId", using: :btree
  end

  create_table "NamedCredential", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",                             limit: 80
    t.string   "Language",                                  limit: 40
    t.string   "MasterLabel",                               limit: 80
    t.string   "NamespacePrefix",                           limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",                               limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                          limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.text     "Endpoint",                                  limit: 65535
    t.string   "PrincipalType"
    t.boolean  "CalloutOptionsGenerateAuthorizationHeader"
    t.boolean  "CalloutOptionsAllowMergeFieldsInHeader"
    t.boolean  "CalloutOptionsAllowMergeFieldsInBody"
    t.string   "AuthProviderId",                            limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AuthProviderId"], name: "CSIX_AuthProviderId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Note", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "ParentId",           limit: 18,       collation: "latin2_general_ci"
    t.string   "Title",              limit: 80
    t.boolean  "IsPrivate"
    t.text     "Body",               limit: 16777215
    t.string   "OwnerId",            limit: 18,       collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "NoteAndAttachment", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.boolean  "IsNote"
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "Title",              limit: 80
    t.boolean  "IsPrivate"
    t.string   "OwnerId",            limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Notes__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",            limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",               limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "Prospect__c",        limit: 18,       collation: "latin2_general_ci"
    t.string   "AE_Name__c",         limit: 100
    t.datetime "Timestamp__c"
    t.text     "Note__c",            limit: 16777215
    t.text     "ProspectID__c",      limit: 65535
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["Prospect__c"], name: "CSIX_Prospect__c", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "OauthToken", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "AccessToken"
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "RequestToken"
    t.datetime "CreatedDate"
    t.string   "AppName"
    t.datetime "LastUsedDate"
    t.integer  "UseCount"
    t.string   "DeleteToken"
    t.string   "AppMenuItemId",      limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AppMenuItemId"], name: "CSIX_AppMenuItemId", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "ObjectPermissions", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",                    limit: 18, collation: "latin2_general_ci"
    t.string   "SobjectType",                 limit: 40
    t.boolean  "PermissionsCreate"
    t.boolean  "PermissionsRead"
    t.boolean  "PermissionsEdit"
    t.boolean  "PermissionsDelete"
    t.boolean  "PermissionsViewAllRecords"
    t.boolean  "PermissionsModifyAllRecords"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                 limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",            limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "OpenActivity", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "AccountId",                                 limit: 18,       collation: "latin2_general_ci"
    t.string   "WhoId",                                     limit: 18,       collation: "latin2_general_ci"
    t.string   "WhatId",                                    limit: 18,       collation: "latin2_general_ci"
    t.string   "Subject",                                   limit: 80
    t.boolean  "IsTask"
    t.date     "ActivityDate"
    t.string   "OwnerId",                                   limit: 18,       collation: "latin2_general_ci"
    t.string   "Status",                                    limit: 40
    t.string   "Priority",                                  limit: 40
    t.boolean  "IsHighPriority"
    t.string   "ActivityType",                              limit: 40
    t.boolean  "IsClosed"
    t.boolean  "IsAllDayEvent"
    t.boolean  "IsVisibleInSelfService"
    t.integer  "DurationInMinutes"
    t.string   "Location",                                  limit: 80
    t.text     "Description",                               limit: 16777215
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                               limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                          limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.integer  "CallDurationInSeconds"
    t.string   "CallType",                                  limit: 40
    t.string   "CallDisposition"
    t.string   "CallObject"
    t.datetime "ReminderDateTime"
    t.boolean  "IsReminderSet"
    t.datetime "EndDateTime"
    t.datetime "StartDateTime"
    t.string   "ActivitySubtype",                           limit: 40
    t.string   "AlternateDetailId",                         limit: 18,       collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.string   "ScheduleOnce__Cancel_reschedule_reason__c"
    t.string   "ScheduleOnce__Event_status__c"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["AlternateDetailId"], name: "CSIX_AlternateDetailId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["WhatId"], name: "CSIX_WhatId", using: :btree
    t.index ["WhoId"], name: "CSIX_WhoId", using: :btree
  end

  create_table "Opportunity", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "AccountId",                             limit: 18,                                collation: "latin2_general_ci"
    t.string   "Name",                                  limit: 120
    t.text     "Description",                           limit: 16777215
    t.string   "StageName",                             limit: 40
    t.decimal  "Amount",                                                 precision: 20, scale: 4
    t.integer  "Probability"
    t.date     "CloseDate"
    t.string   "Type",                                  limit: 40
    t.string   "NextStep"
    t.string   "LeadSource",                            limit: 40
    t.boolean  "IsClosed"
    t.boolean  "IsWon"
    t.string   "ForecastCategory",                      limit: 40
    t.string   "ForecastCategoryName",                  limit: 40
    t.string   "CampaignId",                            limit: 18,                                collation: "latin2_general_ci"
    t.boolean  "HasOpportunityLineItem"
    t.string   "Pricebook2Id",                          limit: 18,                                collation: "latin2_general_ci"
    t.string   "OwnerId",                               limit: 18,                                collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                           limit: 18,                                collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                      limit: 18,                                collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.date     "LastActivityDate"
    t.integer  "FiscalQuarter"
    t.integer  "FiscalYear"
    t.string   "Fiscal",                                limit: 6
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.boolean  "HasOpenActivity"
    t.boolean  "HasOverdueTask"
    t.string   "Partner__c",                            limit: 18,                                collation: "latin2_general_ci"
    t.boolean  "IsOTP_Approved__c"
    t.text     "Feedback__c",                           limit: 16777215
    t.datetime "Meeting_Date_Time__c"
    t.string   "Registered_Deal_Num__c",                limit: 128
    t.string   "Status__c"
    t.string   "Outcomes__c"
    t.string   "AE_Name__c"
    t.string   "EN_Placeholder__c",                     limit: 10
    t.string   "Priority_Placeholder__c",               limit: 10
    t.string   "OTP_Placeholder__c",                    limit: 30
    t.text     "Contact_and_Partner__c",                limit: 65535
    t.text     "Appt_Info__c",                          limit: 65535
    t.string   "EN_Placeholder_2__c",                   limit: 5
    t.string   "Placeholder_BANT__c",                   limit: 30
    t.string   "Placeholder_BANT_Q__c",                 limit: 30
    t.text     "IQ001__c",                              limit: 16777215
    t.text     "IQ002__c",                              limit: 16777215
    t.text     "IQ003__c",                              limit: 16777215
    t.text     "IQ004__c",                              limit: 16777215
    t.text     "IQ005__c",                              limit: 16777215
    t.text     "IQ006__c",                              limit: 16777215
    t.text     "IQ007__c",                              limit: 16777215
    t.text     "IQ008__c",                              limit: 16777215
    t.text     "IQ009__c",                              limit: 16777215
    t.text     "IQ010__c",                              limit: 16777215
    t.text     "IQ011__c",                              limit: 16777215
    t.text     "IQ012__c",                              limit: 16777215
    t.text     "IQ013__c",                              limit: 16777215
    t.text     "IQ014__c",                              limit: 16777215
    t.text     "IQ015__c",                              limit: 16777215
    t.text     "OTP_Acct_Mgr_Name__c",                  limit: 65535
    t.text     "Cover_Sheet_Text__c",                   limit: 16777215
    t.text     "OTP_Account_Manager_Feedback__c",       limit: 16777215
    t.text     "Business_Unit__c",                      limit: 65535
    t.string   "Partner_Sales_Rep_Name__c"
    t.string   "Partner_Sales_Rep_Phone_Number__c",     limit: 40
    t.string   "Partner_Sales_Rep_Email__c"
    t.string   "Partner_Account_Assigned__c",           limit: 18,                                collation: "latin2_general_ci"
    t.string   "Meeting_Attempt__c"
    t.string   "Meeting_Value__c"
    t.string   "Confirmation_via__c"
    t.string   "Client_PAM__c"
    t.datetime "Re_schedule_Meeting_Date_Time__c"
    t.string   "Time_Zone__c"
    t.string   "OTP_Customer_Engagement_Specialist__c"
    t.text     "Call_Objective__c",                     limit: 16777215
    t.string   "Re_schedule_Reason__c"
    t.text     "Conference_Phone_Access_Number__c",     limit: 16777215
    t.string   "Solution_Brand__c"
    t.text     "OTP_CES_Feedback__c",                   limit: 16777215
    t.datetime "Initial_Meeting_Date_Time__c"
    t.string   "Partner_Joined_Call__c"
    t.string   "Prospect_Joined_Call__c"
    t.bigint   "Call_Duration_in_minutes__c"
    t.text     "Next_Steps_Planned__c",                 limit: 16777215
    t.text     "Solutions_discussed_on_the_call__c",    limit: 16777215
    t.text     "QC_Pending_QC_Rejected_Note__c",        limit: 16777215
    t.datetime "Re_schedule_Date_Time_w_Prospect__c"
    t.string   "Able_to_Re_schedule_w_Prospect__c"
    t.decimal  "Number_Sent_in_Campaign__c",                             precision: 20, scale: 4
    t.bigint   "Opportunities_in_Campaign__c"
    t.boolean  "Counts_Towards_Lead_Goal__c"
    t.decimal  "OpportunitySequence__c",                                 precision: 20, scale: 3
    t.string   "AE_Email_Address__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.string   "Ready_for_QC_Review__c"
    t.bigint   "Lead_Revenue_Amount__c"
    t.datetime "AE_Last_Updated__c"
    t.datetime "OTP_Account_Manager_Last_Updated__c"
    t.string   "OTP_Account_Manager_Approve__c"
    t.bigint   "Lead_Revenue_Adjustments__c"
    t.integer  "Push_Counter__c"
    t.string   "Available_to_Reschedule__c"
    t.string   "Lead_ID__c"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["CampaignId"], name: "CSIX_CampaignId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["Partner_Account_Assigned__c"], name: "CSIX_Partner_Account_Assigned__c", using: :btree
    t.index ["Partner__c"], name: "CSIX_Partner__c", using: :btree
    t.index ["Pricebook2Id"], name: "CSIX_Pricebook2Id", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "OpportunityCompetitor", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OpportunityId",      limit: 18,    collation: "latin2_general_ci"
    t.string   "CompetitorName",     limit: 40
    t.text     "Strengths",          limit: 65535
    t.text     "Weaknesses",         limit: 65535
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OpportunityId"], name: "CSIX_OpportunityId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "OpportunityContactRole", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OpportunityId",      limit: 18, collation: "latin2_general_ci"
    t.string   "ContactId",          limit: 18, collation: "latin2_general_ci"
    t.string   "Role",               limit: 40
    t.boolean  "IsPrimary"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContactId"], name: "CSIX_ContactId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OpportunityId"], name: "CSIX_OpportunityId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "OpportunityFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "OpportunityFieldHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "OpportunityId",      limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["OpportunityId"], name: "CSIX_OpportunityId", using: :btree
  end

  create_table "OpportunityHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OpportunityId",      limit: 18,                          collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18,                          collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "StageName",          limit: 40
    t.decimal  "Amount",                        precision: 20, scale: 4
    t.decimal  "ExpectedRevenue",               precision: 20, scale: 4
    t.date     "CloseDate"
    t.integer  "Probability"
    t.string   "ForecastCategory",   limit: 40
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["OpportunityId"], name: "CSIX_OpportunityId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "OpportunityLineItem", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OpportunityId",      limit: 18,                             collation: "latin2_general_ci"
    t.integer  "SortOrder"
    t.string   "PricebookEntryId",   limit: 18,                             collation: "latin2_general_ci"
    t.string   "Product2Id",         limit: 18,                             collation: "latin2_general_ci"
    t.string   "ProductCode"
    t.text     "Name",               limit: 65535
    t.decimal  "Quantity",                         precision: 20, scale: 4
    t.decimal  "TotalPrice",                       precision: 20, scale: 4
    t.decimal  "UnitPrice",                        precision: 20, scale: 4
    t.decimal  "ListPrice",                        precision: 20, scale: 4
    t.date     "ServiceDate"
    t.string   "Description"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,                             collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,                             collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OpportunityId"], name: "CSIX_OpportunityId", using: :btree
    t.index ["PricebookEntryId"], name: "CSIX_PricebookEntryId", using: :btree
    t.index ["Product2Id"], name: "CSIX_Product2Id", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "OpportunityPartner", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OpportunityId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccountToId",        limit: 18, collation: "latin2_general_ci"
    t.string   "Role",               limit: 40
    t.boolean  "IsPrimary"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.string   "ReversePartnerId",   limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AccountToId"], name: "CSIX_AccountToId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OpportunityId"], name: "CSIX_OpportunityId", using: :btree
    t.index ["ReversePartnerId"], name: "CSIX_ReversePartnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "OpportunityShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OpportunityId",          limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",          limit: 18, collation: "latin2_general_ci"
    t.string   "OpportunityAccessLevel", limit: 40
    t.string   "RowCause",               limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",       limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["OpportunityId"], name: "CSIX_OpportunityId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "OpportunityStage", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "MasterLabel"
    t.string   "ApiName"
    t.boolean  "IsActive"
    t.integer  "SortOrder"
    t.boolean  "IsClosed"
    t.boolean  "IsWon"
    t.string   "ForecastCategory",     limit: 40
    t.string   "ForecastCategoryName", limit: 40
    t.integer  "DefaultProbability"
    t.string   "Description"
    t.string   "CreatedById",          limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",     limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "OrgLifecycleNotification", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.text     "ReplayId",             limit: 65535
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,    collation: "latin2_general_ci"
    t.string   "LifecycleRequestType"
    t.string   "LifecycleRequestId",   limit: 18
    t.string   "OrgId",                limit: 18
    t.string   "Status"
    t.string   "StatusCode"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
  end

  create_table "OrgWideEmailAddress", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.text     "Address",            limit: 65535
    t.text     "DisplayName",        limit: 65535
    t.boolean  "IsAllowAllProfiles"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Organization", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",                                   limit: 80
    t.string   "Division",                               limit: 80
    t.string   "Street"
    t.string   "City",                                   limit: 40
    t.string   "State",                                  limit: 80
    t.string   "PostalCode",                             limit: 20
    t.string   "Country",                                limit: 80
    t.decimal  "Latitude",                                          precision: 20, scale: 17
    t.decimal  "Longitude",                                         precision: 20, scale: 17
    t.string   "GeocodeAccuracy",                        limit: 40
    t.string   "Address",                                limit: 16
    t.string   "Phone",                                  limit: 40
    t.string   "Fax",                                    limit: 40
    t.string   "PrimaryContact",                         limit: 80
    t.string   "DefaultLocaleSidKey",                    limit: 40
    t.string   "LanguageLocaleKey",                      limit: 40
    t.boolean  "ReceivesInfoEmails"
    t.boolean  "ReceivesAdminInfoEmails"
    t.boolean  "PreferencesRequireOpportunityProducts"
    t.boolean  "PreferencesConsentManagementEnabled"
    t.boolean  "PreferencesIndividualAutoCreateEnabled"
    t.boolean  "PreferencesLightningLoginEnabled"
    t.boolean  "PreferencesOnlyLLPermUserAllowed"
    t.integer  "FiscalYearStartMonth"
    t.boolean  "UsesStartDateAsFiscalYearName"
    t.string   "DefaultAccountAccess",                   limit: 40
    t.string   "DefaultContactAccess",                   limit: 40
    t.string   "DefaultOpportunityAccess",               limit: 40
    t.string   "DefaultLeadAccess",                      limit: 40
    t.string   "DefaultCaseAccess",                      limit: 40
    t.string   "DefaultCalendarAccess",                  limit: 40
    t.string   "DefaultPricebookAccess",                 limit: 40
    t.string   "DefaultCampaignAccess",                  limit: 40
    t.datetime "SystemModstamp"
    t.string   "ComplianceBccEmail",                     limit: 80
    t.string   "UiSkin",                                 limit: 40
    t.string   "SignupCountryIsoCode",                   limit: 2
    t.datetime "TrialExpirationDate"
    t.integer  "NumKnowledgeService"
    t.string   "OrganizationType",                       limit: 40
    t.string   "NamespacePrefix",                        limit: 15
    t.string   "InstanceName",                           limit: 5
    t.boolean  "IsSandbox"
    t.string   "WebToCaseDefaultOrigin",                 limit: 40
    t.integer  "MonthlyPageViewsUsed"
    t.integer  "MonthlyPageViewsEntitlement"
    t.boolean  "IsReadOnly"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                            limit: 18,                           collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                       limit: 18,                           collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.boolean  "PreferencesActivityAnalyticsEnabled"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "OutgoingEmail", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ExternalId"
    t.string   "ValidatedFromAddress"
    t.text     "ToAddress",            limit: 65535
    t.text     "CcAddress",            limit: 65535
    t.text     "BccAddress",           limit: 65535
    t.text     "Subject",              limit: 65535
    t.text     "TextBody",             limit: 16777215
    t.text     "HtmlBody",             limit: 16777215
    t.string   "RelatedToId",          limit: 18,       collation: "latin2_general_ci"
    t.string   "WhoId",                limit: 18,       collation: "latin2_general_ci"
    t.string   "EmailTemplateId",      limit: 18,       collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["EmailTemplateId"], name: "CSIX_EmailTemplateId", using: :btree
    t.index ["RelatedToId"], name: "CSIX_RelatedToId", using: :btree
    t.index ["WhoId"], name: "CSIX_WhoId", using: :btree
  end

  create_table "OutgoingEmailRelation", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ExternalId"
    t.string   "OutgoingEmailId"
    t.string   "RelationId",         limit: 18, collation: "latin2_general_ci"
    t.string   "RelationAddress"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["RelationId"], name: "CSIX_RelationId", using: :btree
  end

  create_table "OwnedContentDocument", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "OwnerId",            limit: 18, collation: "latin2_general_ci"
    t.string   "ContentDocumentId",  limit: 18, collation: "latin2_general_ci"
    t.string   "Title"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "FileType",           limit: 20
    t.integer  "ContentSize"
    t.string   "FileExtension",      limit: 40
    t.string   "ContentUrl"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ContentDocumentId"], name: "CSIX_ContentDocumentId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
  end

  create_table "OwnerChangeOptionInfo", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "DurableId"
    t.string   "EntityDefinitionId", limit: 70
    t.string   "Name",               limit: 150
    t.string   "Label",              limit: 150
    t.boolean  "IsEditable"
    t.boolean  "DefaultValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "PackageLicense", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Status",             limit: 40
    t.boolean  "IsProvisioned"
    t.integer  "AllowedLicenses"
    t.integer  "UsedLicenses"
    t.datetime "ExpirationDate"
    t.datetime "CreatedDate"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.string   "NamespacePrefix",    limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Partner", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OpportunityId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccountFromId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccountToId",        limit: 18, collation: "latin2_general_ci"
    t.string   "Role",               limit: 40
    t.boolean  "IsPrimary"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.string   "ReversePartnerId",   limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AccountFromId"], name: "CSIX_AccountFromId", using: :btree
    t.index ["AccountToId"], name: "CSIX_AccountToId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OpportunityId"], name: "CSIX_OpportunityId", using: :btree
    t.index ["ReversePartnerId"], name: "CSIX_ReversePartnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "PartnerRole", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "MasterLabel"
    t.string   "ApiName"
    t.integer  "SortOrder"
    t.string   "ReverseRole",        limit: 40
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Period", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "FiscalYearSettingsId", limit: 18, collation: "latin2_general_ci"
    t.string   "Type",                 limit: 40
    t.date     "StartDate"
    t.date     "EndDate"
    t.datetime "SystemModstamp"
    t.boolean  "IsForecastPeriod"
    t.string   "QuarterLabel",         limit: 40
    t.string   "PeriodLabel",          limit: 40
    t.integer  "Number"
    t.string   "FullyQualifiedLabel",  limit: 80
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["FiscalYearSettingsId"], name: "CSIX_FiscalYearSettingsId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "PermissionSet", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",                                      limit: 80
    t.string   "Label",                                     limit: 80
    t.string   "LicenseId",                                 limit: 18, collation: "latin2_general_ci"
    t.string   "ProfileId",                                 limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsOwnedByProfile"
    t.boolean  "IsCustom"
    t.boolean  "PermissionsEmailSingle"
    t.boolean  "PermissionsEmailMass"
    t.boolean  "PermissionsEditTask"
    t.boolean  "PermissionsEditEvent"
    t.boolean  "PermissionsExportReport"
    t.boolean  "PermissionsImportPersonal"
    t.boolean  "PermissionsDataExport"
    t.boolean  "PermissionsManageUsers"
    t.boolean  "PermissionsEditPublicFilters"
    t.boolean  "PermissionsEditPublicTemplates"
    t.boolean  "PermissionsModifyAllData"
    t.boolean  "PermissionsManageCases"
    t.boolean  "PermissionsMassInlineEdit"
    t.boolean  "PermissionsManageSolutions"
    t.boolean  "PermissionsCustomizeApplication"
    t.boolean  "PermissionsEditReadonlyFields"
    t.boolean  "PermissionsRunReports"
    t.boolean  "PermissionsViewSetup"
    t.boolean  "PermissionsTransferAnyEntity"
    t.boolean  "PermissionsNewReportBuilder"
    t.boolean  "PermissionsActivateContract"
    t.boolean  "PermissionsImportLeads"
    t.boolean  "PermissionsManageLeads"
    t.boolean  "PermissionsTransferAnyLead"
    t.boolean  "PermissionsViewAllData"
    t.boolean  "PermissionsEditPublicDocuments"
    t.boolean  "PermissionsViewEncryptedData"
    t.boolean  "PermissionsEditBrandTemplates"
    t.boolean  "PermissionsEditHtmlTemplates"
    t.boolean  "PermissionsChatterInternalUser"
    t.boolean  "PermissionsManageDashboards"
    t.boolean  "PermissionsDeleteActivatedContract"
    t.boolean  "PermissionsChatterInviteExternalUsers"
    t.boolean  "PermissionsSendSitRequests"
    t.boolean  "PermissionsApiUserOnly"
    t.boolean  "PermissionsManageRemoteAccess"
    t.boolean  "PermissionsCanUseNewDashboardBuilder"
    t.boolean  "PermissionsManageCategories"
    t.boolean  "PermissionsConvertLeads"
    t.boolean  "PermissionsPasswordNeverExpires"
    t.boolean  "PermissionsUseTeamReassignWizards"
    t.boolean  "PermissionsInstallPackaging"
    t.boolean  "PermissionsPublishPackaging"
    t.boolean  "PermissionsChatterOwnGroups"
    t.boolean  "PermissionsEditOppLineItemUnitPrice"
    t.boolean  "PermissionsCreatePackaging"
    t.boolean  "PermissionsBulkApiHardDelete"
    t.boolean  "PermissionsInboundMigrationToolsUser"
    t.boolean  "PermissionsSolutionImport"
    t.boolean  "PermissionsManageCallCenters"
    t.boolean  "PermissionsEditReports"
    t.boolean  "PermissionsManageSynonyms"
    t.boolean  "PermissionsOutboundMigrationToolsUser"
    t.boolean  "PermissionsViewContent"
    t.boolean  "PermissionsManageEmailClientConfig"
    t.boolean  "PermissionsEnableNotifications"
    t.boolean  "PermissionsManageDataIntegrations"
    t.boolean  "PermissionsDistributeFromPersWksp"
    t.boolean  "PermissionsViewDataCategories"
    t.boolean  "PermissionsManageDataCategories"
    t.boolean  "PermissionsAuthorApex"
    t.boolean  "PermissionsManageMobile"
    t.boolean  "PermissionsApiEnabled"
    t.boolean  "PermissionsManageCustomReportTypes"
    t.boolean  "PermissionsEditCaseComments"
    t.boolean  "PermissionsTransferAnyCase"
    t.boolean  "PermissionsContentAdministrator"
    t.boolean  "PermissionsCreateWorkspaces"
    t.boolean  "PermissionsManageContentPermissions"
    t.boolean  "PermissionsManageContentProperties"
    t.boolean  "PermissionsManageContentTypes"
    t.boolean  "PermissionsScheduleJob"
    t.boolean  "PermissionsManageExchangeConfig"
    t.boolean  "PermissionsManageAnalyticSnapshots"
    t.boolean  "PermissionsScheduleReports"
    t.boolean  "PermissionsManageBusinessHourHolidays"
    t.boolean  "PermissionsCustomSidebarOnAllPages"
    t.boolean  "PermissionsManageInteraction"
    t.boolean  "PermissionsViewMyTeamsDashboards"
    t.boolean  "PermissionsModerateChatter"
    t.boolean  "PermissionsResetPasswords"
    t.boolean  "PermissionsFlowUFLRequired"
    t.boolean  "PermissionsCanInsertFeedSystemFields"
    t.boolean  "PermissionsEmailTemplateManagement"
    t.boolean  "PermissionsEmailAdministration"
    t.boolean  "PermissionsManageChatterMessages"
    t.boolean  "PermissionsAllowEmailIC"
    t.boolean  "PermissionsChatterFileLink"
    t.boolean  "PermissionsForceTwoFactor"
    t.boolean  "PermissionsViewEventLogFiles"
    t.boolean  "PermissionsManageNetworks"
    t.boolean  "PermissionsManageAuthProviders"
    t.boolean  "PermissionsRunFlow"
    t.boolean  "PermissionsViewAllUsers"
    t.boolean  "PermissionsConnectOrgToEnvironmentHub"
    t.boolean  "PermissionsCreateCustomizeFilters"
    t.boolean  "PermissionsGovernNetworks"
    t.boolean  "PermissionsSalesConsole"
    t.boolean  "PermissionsTwoFactorApi"
    t.boolean  "PermissionsDeleteTopics"
    t.boolean  "PermissionsEditTopics"
    t.boolean  "PermissionsCreateTopics"
    t.boolean  "PermissionsAssignTopics"
    t.boolean  "PermissionsIdentityEnabled"
    t.boolean  "PermissionsIdentityConnect"
    t.boolean  "PermissionsContentWorkspaces"
    t.boolean  "PermissionsCustomMobileAppsAccess"
    t.boolean  "PermissionsViewHelpLink"
    t.boolean  "PermissionsManageProfilesPermissionsets"
    t.boolean  "PermissionsAssignPermissionSets"
    t.boolean  "PermissionsManageRoles"
    t.boolean  "PermissionsManageIpAddresses"
    t.boolean  "PermissionsManageSharing"
    t.boolean  "PermissionsManageInternalUsers"
    t.boolean  "PermissionsManagePasswordPolicies"
    t.boolean  "PermissionsManageLoginAccessPolicies"
    t.boolean  "PermissionsManageCustomPermissions"
    t.boolean  "PermissionsCanVerifyComment"
    t.boolean  "PermissionsManageUnlistedGroups"
    t.boolean  "PermissionsManageTwoFactor"
    t.boolean  "PermissionsLightningExperienceUser"
    t.boolean  "PermissionsConfigCustomRecs"
    t.boolean  "PermissionsSubmitMacrosAllowed"
    t.boolean  "PermissionsBulkMacrosAllowed"
    t.boolean  "PermissionsManageSessionPermissionSets"
    t.boolean  "PermissionsSendAnnouncementEmails"
    t.boolean  "PermissionsChatterEditOwnPost"
    t.boolean  "PermissionsChatterEditOwnRecordPost"
    t.boolean  "PermissionsManageSandboxes"
    t.boolean  "PermissionsImportCustomObjects"
    t.boolean  "PermissionsDelegatedTwoFactor"
    t.boolean  "PermissionsChatterComposeUiCodesnippet"
    t.boolean  "PermissionsSelectFilesFromSalesforce"
    t.boolean  "PermissionsModerateNetworkUsers"
    t.boolean  "PermissionsMergeTopics"
    t.boolean  "PermissionsSubscribeToLightningReports"
    t.boolean  "PermissionsManagePvtRptsAndDashbds"
    t.boolean  "PermissionsAllowLightningLogin"
    t.boolean  "PermissionsCampaignInfluence2"
    t.boolean  "PermissionsViewDataAssessment"
    t.boolean  "PermissionsRemoveDirectMessageMembers"
    t.boolean  "PermissionsCanApproveFeedPost"
    t.boolean  "PermissionsAddDirectMessageMembers"
    t.boolean  "PermissionsAllowViewEditConvertedLeads"
    t.boolean  "PermissionsSocialInsightsLogoAdmin"
    t.boolean  "PermissionsShowCompanyNameAsUserBadge"
    t.boolean  "PermissionsAccessCMC"
    t.boolean  "PermissionsViewHealthCheck"
    t.boolean  "PermissionsManageHealthCheck"
    t.boolean  "PermissionsPackaging2"
    t.boolean  "PermissionsManageCertificates"
    t.boolean  "PermissionsPreventClassicExperience"
    t.boolean  "PermissionsHideReadByList"
    t.boolean  "PermissionsListEmailSend"
    t.boolean  "PermissionsFeedPinning"
    t.boolean  "PermissionsChangeDashboardColors"
    t.boolean  "PermissionsUseWebLink"
    t.boolean  "PermissionsViewAllActivities"
    t.boolean  "PermissionsLightningConsoleAllowedForUser"
    t.boolean  "PermissionsSubscribeToLightningDashboards"
    t.boolean  "PermissionsPardotUser"
    t.boolean  "PermissionsApexRestServices"
    t.boolean  "PermissionsEnableCommunityAppLauncher"
    t.boolean  "PermissionsManageSurveys"
    t.boolean  "PermissionsViewRoles"
    t.string   "Description"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                               limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                          limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "NamespacePrefix",                           limit: 15
    t.boolean  "HasActivationRequired"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.boolean  "PermissionsAutomaticActivityCapture"
    t.boolean  "PermissionsViewOnlyEmbeddedAppUser"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LicenseId"], name: "CSIX_LicenseId", using: :btree
    t.index ["ProfileId"], name: "CSIX_ProfileId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "PermissionSetAssignment", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "PermissionSetId",    limit: 18, collation: "latin2_general_ci"
    t.string   "AssigneeId",         limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AssigneeId"], name: "CSIX_AssigneeId", using: :btree
    t.index ["PermissionSetId"], name: "CSIX_PermissionSetId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "PermissionSetLicense", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",                                    limit: 80
    t.string   "Language",                                         limit: 40
    t.string   "MasterLabel",                                      limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",                                      limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                                 limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "PermissionSetLicenseKey",                          limit: 81
    t.integer  "TotalLicenses"
    t.string   "Status"
    t.date     "ExpirationDate"
    t.boolean  "MaximumPermissionsEmailSingle"
    t.boolean  "MaximumPermissionsEmailMass"
    t.boolean  "MaximumPermissionsEditTask"
    t.boolean  "MaximumPermissionsEditEvent"
    t.boolean  "MaximumPermissionsExportReport"
    t.boolean  "MaximumPermissionsImportPersonal"
    t.boolean  "MaximumPermissionsDataExport"
    t.boolean  "MaximumPermissionsManageUsers"
    t.boolean  "MaximumPermissionsEditPublicFilters"
    t.boolean  "MaximumPermissionsEditPublicTemplates"
    t.boolean  "MaximumPermissionsModifyAllData"
    t.boolean  "MaximumPermissionsManageCases"
    t.boolean  "MaximumPermissionsMassInlineEdit"
    t.boolean  "MaximumPermissionsManageSolutions"
    t.boolean  "MaximumPermissionsCustomizeApplication"
    t.boolean  "MaximumPermissionsEditReadonlyFields"
    t.boolean  "MaximumPermissionsRunReports"
    t.boolean  "MaximumPermissionsViewSetup"
    t.boolean  "MaximumPermissionsTransferAnyEntity"
    t.boolean  "MaximumPermissionsNewReportBuilder"
    t.boolean  "MaximumPermissionsActivateContract"
    t.boolean  "MaximumPermissionsImportLeads"
    t.boolean  "MaximumPermissionsManageLeads"
    t.boolean  "MaximumPermissionsTransferAnyLead"
    t.boolean  "MaximumPermissionsViewAllData"
    t.boolean  "MaximumPermissionsEditPublicDocuments"
    t.boolean  "MaximumPermissionsViewEncryptedData"
    t.boolean  "MaximumPermissionsEditBrandTemplates"
    t.boolean  "MaximumPermissionsEditHtmlTemplates"
    t.boolean  "MaximumPermissionsChatterInternalUser"
    t.boolean  "MaximumPermissionsManageDashboards"
    t.boolean  "MaximumPermissionsDeleteActivatedContract"
    t.boolean  "MaximumPermissionsChatterInviteExternalUsers"
    t.boolean  "MaximumPermissionsSendSitRequests"
    t.boolean  "MaximumPermissionsApiUserOnly"
    t.boolean  "MaximumPermissionsManageRemoteAccess"
    t.boolean  "MaximumPermissionsCanUseNewDashboardBuilder"
    t.boolean  "MaximumPermissionsManageCategories"
    t.boolean  "MaximumPermissionsConvertLeads"
    t.boolean  "MaximumPermissionsPasswordNeverExpires"
    t.boolean  "MaximumPermissionsUseTeamReassignWizards"
    t.boolean  "MaximumPermissionsInstallPackaging"
    t.boolean  "MaximumPermissionsPublishPackaging"
    t.boolean  "MaximumPermissionsChatterOwnGroups"
    t.boolean  "MaximumPermissionsEditOppLineItemUnitPrice"
    t.boolean  "MaximumPermissionsCreatePackaging"
    t.boolean  "MaximumPermissionsBulkApiHardDelete"
    t.boolean  "MaximumPermissionsInboundMigrationToolsUser"
    t.boolean  "MaximumPermissionsSolutionImport"
    t.boolean  "MaximumPermissionsManageCallCenters"
    t.boolean  "MaximumPermissionsEditReports"
    t.boolean  "MaximumPermissionsManageSynonyms"
    t.boolean  "MaximumPermissionsOutboundMigrationToolsUser"
    t.boolean  "MaximumPermissionsViewContent"
    t.boolean  "MaximumPermissionsManageEmailClientConfig"
    t.boolean  "MaximumPermissionsEnableNotifications"
    t.boolean  "MaximumPermissionsManageDataIntegrations"
    t.boolean  "MaximumPermissionsDistributeFromPersWksp"
    t.boolean  "MaximumPermissionsViewDataCategories"
    t.boolean  "MaximumPermissionsManageDataCategories"
    t.boolean  "MaximumPermissionsAuthorApex"
    t.boolean  "MaximumPermissionsManageMobile"
    t.boolean  "MaximumPermissionsApiEnabled"
    t.boolean  "MaximumPermissionsManageCustomReportTypes"
    t.boolean  "MaximumPermissionsEditCaseComments"
    t.boolean  "MaximumPermissionsTransferAnyCase"
    t.boolean  "MaximumPermissionsContentAdministrator"
    t.boolean  "MaximumPermissionsCreateWorkspaces"
    t.boolean  "MaximumPermissionsManageContentPermissions"
    t.boolean  "MaximumPermissionsManageContentProperties"
    t.boolean  "MaximumPermissionsManageContentTypes"
    t.boolean  "MaximumPermissionsScheduleJob"
    t.boolean  "MaximumPermissionsManageExchangeConfig"
    t.boolean  "MaximumPermissionsManageAnalyticSnapshots"
    t.boolean  "MaximumPermissionsScheduleReports"
    t.boolean  "MaximumPermissionsManageBusinessHourHolidays"
    t.boolean  "MaximumPermissionsCustomSidebarOnAllPages"
    t.boolean  "MaximumPermissionsManageInteraction"
    t.boolean  "MaximumPermissionsViewMyTeamsDashboards"
    t.boolean  "MaximumPermissionsModerateChatter"
    t.boolean  "MaximumPermissionsResetPasswords"
    t.boolean  "MaximumPermissionsFlowUFLRequired"
    t.boolean  "MaximumPermissionsCanInsertFeedSystemFields"
    t.boolean  "MaximumPermissionsEmailTemplateManagement"
    t.boolean  "MaximumPermissionsEmailAdministration"
    t.boolean  "MaximumPermissionsManageChatterMessages"
    t.boolean  "MaximumPermissionsAllowEmailIC"
    t.boolean  "MaximumPermissionsChatterFileLink"
    t.boolean  "MaximumPermissionsForceTwoFactor"
    t.boolean  "MaximumPermissionsViewEventLogFiles"
    t.boolean  "MaximumPermissionsManageNetworks"
    t.boolean  "MaximumPermissionsManageAuthProviders"
    t.boolean  "MaximumPermissionsRunFlow"
    t.boolean  "MaximumPermissionsViewAllUsers"
    t.boolean  "MaximumPermissionsConnectOrgToEnvironmentHub"
    t.boolean  "MaximumPermissionsCreateCustomizeFilters"
    t.boolean  "MaximumPermissionsGovernNetworks"
    t.boolean  "MaximumPermissionsSalesConsole"
    t.boolean  "MaximumPermissionsTwoFactorApi"
    t.boolean  "MaximumPermissionsDeleteTopics"
    t.boolean  "MaximumPermissionsEditTopics"
    t.boolean  "MaximumPermissionsCreateTopics"
    t.boolean  "MaximumPermissionsAssignTopics"
    t.boolean  "MaximumPermissionsIdentityEnabled"
    t.boolean  "MaximumPermissionsIdentityConnect"
    t.boolean  "MaximumPermissionsContentWorkspaces"
    t.boolean  "MaximumPermissionsCustomMobileAppsAccess"
    t.boolean  "MaximumPermissionsViewHelpLink"
    t.boolean  "MaximumPermissionsManageProfilesPermissionsets"
    t.boolean  "MaximumPermissionsAssignPermissionSets"
    t.boolean  "MaximumPermissionsManageRoles"
    t.boolean  "MaximumPermissionsManageIpAddresses"
    t.boolean  "MaximumPermissionsManageSharing"
    t.boolean  "MaximumPermissionsManageInternalUsers"
    t.boolean  "MaximumPermissionsManagePasswordPolicies"
    t.boolean  "MaximumPermissionsManageLoginAccessPolicies"
    t.boolean  "MaximumPermissionsManageCustomPermissions"
    t.boolean  "MaximumPermissionsCanVerifyComment"
    t.boolean  "MaximumPermissionsManageUnlistedGroups"
    t.boolean  "MaximumPermissionsManageTwoFactor"
    t.boolean  "MaximumPermissionsLightningExperienceUser"
    t.boolean  "MaximumPermissionsConfigCustomRecs"
    t.boolean  "MaximumPermissionsSubmitMacrosAllowed"
    t.boolean  "MaximumPermissionsBulkMacrosAllowed"
    t.boolean  "MaximumPermissionsManageSessionPermissionSets"
    t.boolean  "MaximumPermissionsSendAnnouncementEmails"
    t.boolean  "MaximumPermissionsChatterEditOwnPost"
    t.boolean  "MaximumPermissionsChatterEditOwnRecordPost"
    t.boolean  "MaximumPermissionsManageSandboxes"
    t.boolean  "MaximumPermissionsImportCustomObjects"
    t.boolean  "MaximumPermissionsDelegatedTwoFactor"
    t.boolean  "MaximumPermissionsChatterComposeUiCodesnippet"
    t.boolean  "MaximumPermissionsSelectFilesFromSalesforce"
    t.boolean  "MaximumPermissionsModerateNetworkUsers"
    t.boolean  "MaximumPermissionsMergeTopics"
    t.boolean  "MaximumPermissionsSubscribeToLightningReports"
    t.boolean  "MaximumPermissionsManagePvtRptsAndDashbds"
    t.boolean  "MaximumPermissionsAllowLightningLogin"
    t.boolean  "MaximumPermissionsCampaignInfluence2"
    t.boolean  "MaximumPermissionsViewDataAssessment"
    t.boolean  "MaximumPermissionsRemoveDirectMessageMembers"
    t.boolean  "MaximumPermissionsCanApproveFeedPost"
    t.boolean  "MaximumPermissionsAddDirectMessageMembers"
    t.boolean  "MaximumPermissionsAllowViewEditConvertedLeads"
    t.boolean  "MaximumPermissionsSocialInsightsLogoAdmin"
    t.boolean  "MaximumPermissionsShowCompanyNameAsUserBadge"
    t.boolean  "MaximumPermissionsAccessCMC"
    t.boolean  "MaximumPermissionsViewHealthCheck"
    t.boolean  "MaximumPermissionsManageHealthCheck"
    t.boolean  "MaximumPermissionsPackaging2"
    t.boolean  "MaximumPermissionsManageCertificates"
    t.boolean  "MaximumPermissionsPreventClassicExperience"
    t.boolean  "MaximumPermissionsHideReadByList"
    t.boolean  "MaximumPermissionsListEmailSend"
    t.boolean  "MaximumPermissionsFeedPinning"
    t.boolean  "MaximumPermissionsChangeDashboardColors"
    t.boolean  "MaximumPermissionsUseWebLink"
    t.boolean  "MaximumPermissionsViewAllActivities"
    t.boolean  "MaximumPermissionsLightningConsoleAllowedForUser"
    t.boolean  "MaximumPermissionsSubscribeToLightningDashboards"
    t.boolean  "MaximumPermissionsPardotUser"
    t.boolean  "MaximumPermissionsApexRestServices"
    t.boolean  "MaximumPermissionsEnableCommunityAppLauncher"
    t.boolean  "MaximumPermissionsManageSurveys"
    t.boolean  "MaximumPermissionsViewRoles"
    t.integer  "UsedLicenses"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.boolean  "MaximumPermissionsAutomaticActivityCapture"
    t.boolean  "MaximumPermissionsViewOnlyEmbeddedAppUser"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "PermissionSetLicenseAssign", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",            limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",       limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "PermissionSetLicenseId", limit: 18, collation: "latin2_general_ci"
    t.string   "AssigneeId",             limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AssigneeId"], name: "CSIX_AssigneeId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["PermissionSetLicenseId"], name: "CSIX_PermissionSetLicenseId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "PicklistValueInfo", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "DurableId"
    t.string   "Value",              limit: 70
    t.string   "Label",              limit: 70
    t.boolean  "IsDefaultValue"
    t.boolean  "IsActive"
    t.string   "ValidFor",           limit: 200
    t.string   "EntityParticleId",   limit: 150
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "PlatformAction", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ExternalId"
    t.datetime "LastModifiedDate"
    t.string   "Label"
    t.string   "Type"
    t.string   "Subtype"
    t.string   "ApiName"
    t.text     "ActionTarget",        limit: 65535
    t.string   "ActionTargetType"
    t.string   "ConfirmationMessage"
    t.string   "GroupId",             limit: 18,    collation: "latin2_general_ci"
    t.boolean  "IsGroupDefault"
    t.string   "Category"
    t.string   "InvocationStatus"
    t.string   "InvokedByUserId",     limit: 18,    collation: "latin2_general_ci"
    t.string   "SourceEntity"
    t.string   "ActionListContext"
    t.string   "DeviceFormat"
    t.string   "IconContentType"
    t.integer  "IconHeight"
    t.integer  "IconWidth"
    t.string   "IconUrl"
    t.boolean  "IsMassAction"
    t.string   "PrimaryColor"
    t.string   "RelatedSourceEntity"
    t.string   "Section"
    t.string   "RelatedListRecordId"
    t.text     "TargetUrl",           limit: 65535
    t.string   "TargetObject"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["GroupId"], name: "CSIX_GroupId", using: :btree
    t.index ["InvokedByUserId"], name: "CSIX_InvokedByUserId", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
  end

  create_table "PlatformCachePartition", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",      limit: 80
    t.string   "Language",           limit: 40
    t.string   "MasterLabel",        limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.text     "Description",        limit: 65535
    t.boolean  "IsDefaultPartition"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "PlatformCachePartitionType", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",           limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "PlatformCachePartitionId",   limit: 18, collation: "latin2_general_ci"
    t.string   "CacheType"
    t.integer  "AllocatedCapacity"
    t.integer  "AllocatedPurchasedCapacity"
    t.integer  "AllocatedTrialCapacity"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["PlatformCachePartitionId"], name: "CSIX_PlatformCachePartitionId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Pricebook2", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.boolean  "IsActive"
    t.boolean  "IsArchived"
    t.string   "Description"
    t.boolean  "IsStandard"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Pricebook2History", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Pricebook2Id",       limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["Pricebook2Id"], name: "CSIX_Pricebook2Id", using: :btree
  end

  create_table "PricebookEntry", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name"
    t.string   "Pricebook2Id",       limit: 18,                          collation: "latin2_general_ci"
    t.string   "Product2Id",         limit: 18,                          collation: "latin2_general_ci"
    t.decimal  "UnitPrice",                     precision: 20, scale: 4
    t.boolean  "IsActive"
    t.boolean  "UseStandardPrice"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,                          collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,                          collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ProductCode"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["Pricebook2Id"], name: "CSIX_Pricebook2Id", using: :btree
    t.index ["Product2Id"], name: "CSIX_Product2Id", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ProcessDefinition", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",               limit: 40
    t.string   "DeveloperName",      limit: 80
    t.string   "Type",               limit: 40
    t.text     "Description",        limit: 65535
    t.string   "TableEnumOrId",      limit: 40
    t.string   "LockType",           limit: 40
    t.string   "State",              limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ProcessInstance", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ProcessDefinitionId",  limit: 18,                          collation: "latin2_general_ci"
    t.string   "TargetObjectId",       limit: 18,                          collation: "latin2_general_ci"
    t.string   "Status",               limit: 40
    t.datetime "CompletedDate"
    t.string   "LastActorId",          limit: 18,                          collation: "latin2_general_ci"
    t.decimal  "ElapsedTimeInDays",               precision: 20, scale: 5
    t.decimal  "ElapsedTimeInHours",              precision: 20, scale: 4
    t.decimal  "ElapsedTimeInMinutes",            precision: 20, scale: 5
    t.string   "SubmittedById",        limit: 18,                          collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,                          collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18,                          collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastActorId"], name: "CSIX_LastActorId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ProcessDefinitionId"], name: "CSIX_ProcessDefinitionId", using: :btree
    t.index ["SubmittedById"], name: "CSIX_SubmittedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["TargetObjectId"], name: "CSIX_TargetObjectId", using: :btree
  end

  create_table "ProcessInstanceHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsPending"
    t.string   "ProcessInstanceId",    limit: 18,                             collation: "latin2_general_ci"
    t.string   "TargetObjectId",       limit: 18,                             collation: "latin2_general_ci"
    t.string   "StepStatus",           limit: 40
    t.string   "ProcessNodeId",        limit: 18,                             collation: "latin2_general_ci"
    t.string   "OriginalActorId",      limit: 18,                             collation: "latin2_general_ci"
    t.string   "ActorId",              limit: 18,                             collation: "latin2_general_ci"
    t.integer  "RemindersSent"
    t.bigint   "ElapsedTimeInDays"
    t.decimal  "ElapsedTimeInHours",                 precision: 20, scale: 4
    t.integer  "ElapsedTimeInMinutes"
    t.text     "Comments",             limit: 65535
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,                             collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ActorId"], name: "CSIX_ActorId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["OriginalActorId"], name: "CSIX_OriginalActorId", using: :btree
    t.index ["ProcessInstanceId"], name: "CSIX_ProcessInstanceId", using: :btree
    t.index ["ProcessNodeId"], name: "CSIX_ProcessNodeId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["TargetObjectId"], name: "CSIX_TargetObjectId", using: :btree
  end

  create_table "ProcessInstanceNode", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,                          collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18,                          collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ProcessInstanceId",    limit: 18,                          collation: "latin2_general_ci"
    t.string   "ProcessNodeId",        limit: 18,                          collation: "latin2_general_ci"
    t.string   "NodeStatus"
    t.datetime "CompletedDate"
    t.string   "LastActorId",          limit: 18,                          collation: "latin2_general_ci"
    t.string   "ProcessNodeName"
    t.decimal  "ElapsedTimeInDays",               precision: 20, scale: 5
    t.decimal  "ElapsedTimeInHours",              precision: 20, scale: 4
    t.decimal  "ElapsedTimeInMinutes",            precision: 20, scale: 5
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastActorId"], name: "CSIX_LastActorId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ProcessInstanceId"], name: "CSIX_ProcessInstanceId", using: :btree
    t.index ["ProcessNodeId"], name: "CSIX_ProcessNodeId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ProcessInstanceStep", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ProcessInstanceId",    limit: 18,                             collation: "latin2_general_ci"
    t.string   "StepStatus",           limit: 40
    t.string   "OriginalActorId",      limit: 18,                             collation: "latin2_general_ci"
    t.string   "ActorId",              limit: 18,                             collation: "latin2_general_ci"
    t.text     "Comments",             limit: 65535
    t.string   "StepNodeId",           limit: 18,                             collation: "latin2_general_ci"
    t.bigint   "ElapsedTimeInDays"
    t.decimal  "ElapsedTimeInHours",                 precision: 20, scale: 4
    t.decimal  "ElapsedTimeInMinutes",               precision: 20, scale: 5
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,                             collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ActorId"], name: "CSIX_ActorId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["OriginalActorId"], name: "CSIX_OriginalActorId", using: :btree
    t.index ["ProcessInstanceId"], name: "CSIX_ProcessInstanceId", using: :btree
    t.index ["StepNodeId"], name: "CSIX_StepNodeId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ProcessInstanceWorkitem", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ProcessInstanceId",    limit: 18,                          collation: "latin2_general_ci"
    t.string   "OriginalActorId",      limit: 18,                          collation: "latin2_general_ci"
    t.string   "ActorId",              limit: 18,                          collation: "latin2_general_ci"
    t.decimal  "ElapsedTimeInDays",               precision: 20, scale: 5
    t.decimal  "ElapsedTimeInHours",              precision: 20, scale: 4
    t.decimal  "ElapsedTimeInMinutes",            precision: 20, scale: 5
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,                          collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ActorId"], name: "CSIX_ActorId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["OriginalActorId"], name: "CSIX_OriginalActorId", using: :btree
    t.index ["ProcessInstanceId"], name: "CSIX_ProcessInstanceId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ProcessNode", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name"
    t.string   "DeveloperName",       limit: 80
    t.string   "ProcessDefinitionId", limit: 18,    collation: "latin2_general_ci"
    t.text     "Description",         limit: 65535
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ProcessDefinitionId"], name: "CSIX_ProcessDefinitionId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Product2", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name"
    t.string   "ProductCode"
    t.text     "Description",           limit: 65535
    t.boolean  "IsActive"
    t.datetime "CreatedDate"
    t.string   "CreatedById",           limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",      limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Family",                limit: 40
    t.string   "ExternalDataSourceId",  limit: 18,    collation: "latin2_general_ci"
    t.string   "ExternalId"
    t.text     "DisplayUrl",            limit: 65535
    t.string   "QuantityUnitOfMeasure", limit: 40
    t.boolean  "IsDeleted"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "StockKeepingUnit",      limit: 180
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["ExternalDataSourceId"], name: "CSIX_ExternalDataSourceId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Product2Feed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Product2History", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Product2Id",         limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["Product2Id"], name: "CSIX_Product2Id", using: :btree
  end

  create_table "Profile", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name"
    t.boolean  "PermissionsEmailSingle"
    t.boolean  "PermissionsEmailMass"
    t.boolean  "PermissionsEditTask"
    t.boolean  "PermissionsEditEvent"
    t.boolean  "PermissionsExportReport"
    t.boolean  "PermissionsImportPersonal"
    t.boolean  "PermissionsDataExport"
    t.boolean  "PermissionsManageUsers"
    t.boolean  "PermissionsEditPublicFilters"
    t.boolean  "PermissionsEditPublicTemplates"
    t.boolean  "PermissionsModifyAllData"
    t.boolean  "PermissionsManageCases"
    t.boolean  "PermissionsMassInlineEdit"
    t.boolean  "PermissionsManageSolutions"
    t.boolean  "PermissionsCustomizeApplication"
    t.boolean  "PermissionsEditReadonlyFields"
    t.boolean  "PermissionsRunReports"
    t.boolean  "PermissionsViewSetup"
    t.boolean  "PermissionsTransferAnyEntity"
    t.boolean  "PermissionsNewReportBuilder"
    t.boolean  "PermissionsActivateContract"
    t.boolean  "PermissionsImportLeads"
    t.boolean  "PermissionsManageLeads"
    t.boolean  "PermissionsTransferAnyLead"
    t.boolean  "PermissionsViewAllData"
    t.boolean  "PermissionsEditPublicDocuments"
    t.boolean  "PermissionsViewEncryptedData"
    t.boolean  "PermissionsEditBrandTemplates"
    t.boolean  "PermissionsEditHtmlTemplates"
    t.boolean  "PermissionsChatterInternalUser"
    t.boolean  "PermissionsManageDashboards"
    t.boolean  "PermissionsDeleteActivatedContract"
    t.boolean  "PermissionsChatterInviteExternalUsers"
    t.boolean  "PermissionsSendSitRequests"
    t.boolean  "PermissionsApiUserOnly"
    t.boolean  "PermissionsManageRemoteAccess"
    t.boolean  "PermissionsCanUseNewDashboardBuilder"
    t.boolean  "PermissionsManageCategories"
    t.boolean  "PermissionsConvertLeads"
    t.boolean  "PermissionsPasswordNeverExpires"
    t.boolean  "PermissionsUseTeamReassignWizards"
    t.boolean  "PermissionsInstallMultiforce"
    t.boolean  "PermissionsPublishMultiforce"
    t.boolean  "PermissionsChatterOwnGroups"
    t.boolean  "PermissionsEditOppLineItemUnitPrice"
    t.boolean  "PermissionsCreateMultiforce"
    t.boolean  "PermissionsBulkApiHardDelete"
    t.boolean  "PermissionsInboundMigrationToolsUser"
    t.boolean  "PermissionsSolutionImport"
    t.boolean  "PermissionsManageCallCenters"
    t.boolean  "PermissionsEditReports"
    t.boolean  "PermissionsManageSynonyms"
    t.boolean  "PermissionsOutboundMigrationToolsUser"
    t.boolean  "PermissionsViewContent"
    t.boolean  "PermissionsManageEmailClientConfig"
    t.boolean  "PermissionsEnableNotifications"
    t.boolean  "PermissionsManageDataIntegrations"
    t.boolean  "PermissionsDistributeFromPersWksp"
    t.boolean  "PermissionsViewDataCategories"
    t.boolean  "PermissionsManageDataCategories"
    t.boolean  "PermissionsAuthorApex"
    t.boolean  "PermissionsManageMobile"
    t.boolean  "PermissionsApiEnabled"
    t.boolean  "PermissionsManageCustomReportTypes"
    t.boolean  "PermissionsEditCaseComments"
    t.boolean  "PermissionsTransferAnyCase"
    t.boolean  "PermissionsContentAdministrator"
    t.boolean  "PermissionsCreateWorkspaces"
    t.boolean  "PermissionsManageContentPermissions"
    t.boolean  "PermissionsManageContentProperties"
    t.boolean  "PermissionsManageContentTypes"
    t.boolean  "PermissionsScheduleJob"
    t.boolean  "PermissionsManageExchangeConfig"
    t.boolean  "PermissionsManageAnalyticSnapshots"
    t.boolean  "PermissionsScheduleReports"
    t.boolean  "PermissionsManageBusinessHourHolidays"
    t.boolean  "PermissionsCustomSidebarOnAllPages"
    t.boolean  "PermissionsManageInteraction"
    t.boolean  "PermissionsViewMyTeamsDashboards"
    t.boolean  "PermissionsModerateChatter"
    t.boolean  "PermissionsResetPasswords"
    t.boolean  "PermissionsFlowUFLRequired"
    t.boolean  "PermissionsCanInsertFeedSystemFields"
    t.boolean  "PermissionsEmailTemplateManagement"
    t.boolean  "PermissionsEmailAdministration"
    t.boolean  "PermissionsManageChatterMessages"
    t.boolean  "PermissionsAllowEmailIC"
    t.boolean  "PermissionsChatterFileLink"
    t.boolean  "PermissionsForceTwoFactor"
    t.boolean  "PermissionsViewEventLogFiles"
    t.boolean  "PermissionsManageNetworks"
    t.boolean  "PermissionsManageAuthProviders"
    t.boolean  "PermissionsRunFlow"
    t.boolean  "PermissionsViewAllUsers"
    t.boolean  "PermissionsConnectOrgToEnvironmentHub"
    t.boolean  "PermissionsCreateCustomizeFilters"
    t.boolean  "PermissionsGovernNetworks"
    t.boolean  "PermissionsSalesConsole"
    t.boolean  "PermissionsTwoFactorApi"
    t.boolean  "PermissionsDeleteTopics"
    t.boolean  "PermissionsEditTopics"
    t.boolean  "PermissionsCreateTopics"
    t.boolean  "PermissionsAssignTopics"
    t.boolean  "PermissionsIdentityEnabled"
    t.boolean  "PermissionsIdentityConnect"
    t.boolean  "PermissionsContentWorkspaces"
    t.boolean  "PermissionsCustomMobileAppsAccess"
    t.boolean  "PermissionsViewHelpLink"
    t.boolean  "PermissionsManageProfilesPermissionsets"
    t.boolean  "PermissionsAssignPermissionSets"
    t.boolean  "PermissionsManageRoles"
    t.boolean  "PermissionsManageIpAddresses"
    t.boolean  "PermissionsManageSharing"
    t.boolean  "PermissionsManageInternalUsers"
    t.boolean  "PermissionsManagePasswordPolicies"
    t.boolean  "PermissionsManageLoginAccessPolicies"
    t.boolean  "PermissionsManageCustomPermissions"
    t.boolean  "PermissionsCanVerifyComment"
    t.boolean  "PermissionsManageUnlistedGroups"
    t.boolean  "PermissionsManageTwoFactor"
    t.boolean  "PermissionsLightningExperienceUser"
    t.boolean  "PermissionsConfigCustomRecs"
    t.boolean  "PermissionsSubmitMacrosAllowed"
    t.boolean  "PermissionsBulkMacrosAllowed"
    t.boolean  "PermissionsManageSessionPermissionSets"
    t.boolean  "PermissionsSendAnnouncementEmails"
    t.boolean  "PermissionsChatterEditOwnPost"
    t.boolean  "PermissionsChatterEditOwnRecordPost"
    t.boolean  "PermissionsManageSandboxes"
    t.boolean  "PermissionsImportCustomObjects"
    t.boolean  "PermissionsDelegatedTwoFactor"
    t.boolean  "PermissionsChatterComposeUiCodesnippet"
    t.boolean  "PermissionsSelectFilesFromSalesforce"
    t.boolean  "PermissionsModerateNetworkUsers"
    t.boolean  "PermissionsMergeTopics"
    t.boolean  "PermissionsSubscribeToLightningReports"
    t.boolean  "PermissionsManagePvtRptsAndDashbds"
    t.boolean  "PermissionsAllowLightningLogin"
    t.boolean  "PermissionsCampaignInfluence2"
    t.boolean  "PermissionsViewDataAssessment"
    t.boolean  "PermissionsRemoveDirectMessageMembers"
    t.boolean  "PermissionsCanApproveFeedPost"
    t.boolean  "PermissionsAddDirectMessageMembers"
    t.boolean  "PermissionsAllowViewEditConvertedLeads"
    t.boolean  "PermissionsSocialInsightsLogoAdmin"
    t.boolean  "PermissionsShowCompanyNameAsUserBadge"
    t.boolean  "PermissionsAccessCMC"
    t.boolean  "PermissionsViewHealthCheck"
    t.boolean  "PermissionsManageHealthCheck"
    t.boolean  "PermissionsPackaging2"
    t.boolean  "PermissionsManageCertificates"
    t.boolean  "PermissionsPreventClassicExperience"
    t.boolean  "PermissionsHideReadByList"
    t.boolean  "PermissionsListEmailSend"
    t.boolean  "PermissionsFeedPinning"
    t.boolean  "PermissionsChangeDashboardColors"
    t.boolean  "PermissionsUseWebLink"
    t.boolean  "PermissionsViewAllActivities"
    t.boolean  "PermissionsLightningConsoleAllowedForUser"
    t.boolean  "PermissionsSubscribeToLightningDashboards"
    t.boolean  "PermissionsPardotUser"
    t.boolean  "PermissionsApexRestServices"
    t.boolean  "PermissionsEnableCommunityAppLauncher"
    t.boolean  "PermissionsManageSurveys"
    t.boolean  "PermissionsViewRoles"
    t.string   "UserLicenseId",                             limit: 18, collation: "latin2_general_ci"
    t.string   "UserType",                                  limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",                               limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                          limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Description"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.boolean  "PermissionsAutomaticActivityCapture"
    t.boolean  "PermissionsViewOnlyEmbeddedAppUser"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserLicenseId"], name: "CSIX_UserLicenseId", using: :btree
  end

  create_table "PushTopic", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",                       limit: 25
    t.text     "Query",                      limit: 65535
    t.decimal  "ApiVersion",                               precision: 20, scale: 3
    t.boolean  "IsActive"
    t.string   "NotifyForFields",            limit: 40
    t.string   "NotifyForOperations",        limit: 40
    t.text     "Description",                limit: 65535
    t.boolean  "NotifyForOperationCreate"
    t.boolean  "NotifyForOperationUpdate"
    t.boolean  "NotifyForOperationDelete"
    t.boolean  "NotifyForOperationUndelete"
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                limit: 18,                             collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",           limit: 18,                             collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "QueueSobject", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "QueueId",            limit: 18, collation: "latin2_general_ci"
    t.string   "SobjectType",        limit: 40
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["QueueId"], name: "CSIX_QueueId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "QuickText", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",            limit: 18,    collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.text     "Message",            limit: 65535
    t.string   "Category",           limit: 40
    t.text     "Channel",            limit: 65535
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "QuickTextHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "QuickTextId",        limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["QuickTextId"], name: "CSIX_QuickTextId", using: :btree
  end

  create_table "QuickTextShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccessLevel",        limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "RecordAction", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "RecordId",           limit: 18, collation: "latin2_general_ci"
    t.string   "FlowDefinition"
    t.string   "FlowInterviewId",    limit: 18, collation: "latin2_general_ci"
    t.integer  "Order2"
    t.string   "Status"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["FlowInterviewId"], name: "CSIX_FlowInterviewId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RecordId"], name: "CSIX_RecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "RecordType", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",               limit: 80
    t.string   "DeveloperName",      limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.string   "Description"
    t.string   "BusinessProcessId",  limit: 18, collation: "latin2_general_ci"
    t.string   "SobjectType",        limit: 40
    t.boolean  "IsActive"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["BusinessProcessId"], name: "CSIX_BusinessProcessId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "RelationshipDomain", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "DurableId"
    t.string   "ParentSobjectId",       limit: 70
    t.string   "ChildSobjectId",        limit: 70
    t.string   "FieldId",               limit: 70
    t.string   "RelationshipInfoId",    limit: 70
    t.string   "RelationshipName",      limit: 80
    t.boolean  "IsCascadeDelete"
    t.boolean  "IsDeprecatedAndHidden"
    t.boolean  "IsRestrictedDelete"
    t.string   "JunctionIdListNames",   limit: 16
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "RelationshipInfo", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "DurableId"
    t.string   "ChildSobjectId",        limit: 70
    t.string   "FieldId",               limit: 70
    t.boolean  "IsCascadeDelete"
    t.boolean  "IsDeprecatedAndHidden"
    t.boolean  "IsRestrictedDelete"
    t.string   "JunctionIdListNames",   limit: 16
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
  end

  create_table "Report", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",            limit: 18,  collation: "latin2_general_ci"
    t.string   "FolderName",         limit: 256
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,  collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,  collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",               limit: 40
    t.string   "Description"
    t.string   "DeveloperName",      limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.datetime "LastRunDate"
    t.datetime "SystemModstamp"
    t.string   "Format",             limit: 40
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ReportFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SamlSsoConfig", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",           limit: 80
    t.string   "Language",                limit: 40
    t.string   "MasterLabel",             limit: 80
    t.string   "NamespacePrefix",         limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",             limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Version"
    t.string   "Issuer"
    t.boolean  "OptionsSpInitBinding"
    t.boolean  "OptionsUserProvisioning"
    t.string   "AttributeFormat"
    t.string   "AttributeName"
    t.string   "Audience"
    t.string   "IdentityMapping"
    t.string   "IdentityLocation"
    t.string   "SamlJitHandlerId",        limit: 18,    collation: "latin2_general_ci"
    t.string   "ExecutionUserId",         limit: 18,    collation: "latin2_general_ci"
    t.text     "LoginUrl",                limit: 65535
    t.text     "LogoutUrl",               limit: 65535
    t.text     "ErrorUrl",                limit: 65535
    t.text     "ValidationCert",          limit: 65535
    t.string   "RequestSignatureMethod"
    t.string   "SingleLogoutUrl"
    t.string   "SingleLogoutBinding"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["ExecutionUserId"], name: "CSIX_ExecutionUserId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SamlJitHandlerId"], name: "CSIX_SamlJitHandlerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Scontrol", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",               limit: 80
    t.string   "DeveloperName",      limit: 80
    t.string   "Description"
    t.string   "EncodingKey",        limit: 40
    t.text     "HtmlWrapper",        limit: 16777215
    t.string   "Filename"
    t.integer  "BodyLength"
    t.text     "Binary2",            limit: 4294967295, collation: "latin2_general_ci"
    t.string   "ContentSource",      limit: 40
    t.boolean  "SupportsCaching"
    t.string   "NamespacePrefix",    limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,         collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,         collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SearchActivity", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,                           collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,                           collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "SearchTerm",         limit: 100
    t.date     "QueryDate"
    t.integer  "CountQueries"
    t.integer  "CountUsers"
    t.decimal  "AvgNumResults",                  precision: 20, scale: 6
    t.string   "KbChannel"
    t.string   "Period"
    t.decimal  "ClickRank",                      precision: 20, scale: 6
    t.string   "QueryLanguage"
    t.string   "ClickedRecordName"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SecureAgentsCluster", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",      limit: 80
    t.string   "Language",           limit: 40
    t.string   "MasterLabel",        limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Description"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SecurityCustomBaseline", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "DeveloperName",      limit: 80
    t.string   "Language",           limit: 40
    t.string   "MasterLabel",        limit: 80
    t.string   "NamespacePrefix",    limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.text     "Baseline",           limit: 16777215
    t.boolean  "IsDefault"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SessionPermSetActivation", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "AuthSessionId",      limit: 18, collation: "latin2_general_ci"
    t.string   "PermissionSetId",    limit: 18, collation: "latin2_general_ci"
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "Description"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AuthSessionId"], name: "CSIX_AuthSessionId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["PermissionSetId"], name: "CSIX_PermissionSetId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "SetupAuditTrail", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Action",                     limit: 120
    t.string   "Section",                    limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",                limit: 18,    collation: "latin2_general_ci"
    t.text     "Display",                    limit: 65535
    t.string   "DelegateUser",               limit: 80
    t.string   "ResponsibleNamespacePrefix", limit: 15
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
  end

  create_table "SetupEntityAccess", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "SetupEntityId",      limit: 18, collation: "latin2_general_ci"
    t.string   "SetupEntityType",    limit: 40
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SetupEntityId"], name: "CSIX_SetupEntityId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Site", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",                                       limit: 80
    t.string   "Subdomain",                                  limit: 80
    t.string   "UrlPathPrefix",                              limit: 40
    t.string   "GuestUserId",                                limit: 18,    collation: "latin2_general_ci"
    t.string   "Status",                                     limit: 40
    t.string   "AdminId",                                    limit: 18,    collation: "latin2_general_ci"
    t.boolean  "OptionsEnableFeeds"
    t.boolean  "OptionsRequireHttps"
    t.boolean  "OptionsAllowHomePage"
    t.boolean  "OptionsAllowStandardIdeasPages"
    t.boolean  "OptionsAllowStandardSearch"
    t.boolean  "OptionsAllowStandardLookups"
    t.boolean  "OptionsAllowStandardAnswersPages"
    t.boolean  "OptionsAllowGuestSupportApi"
    t.boolean  "OptionsAllowStandardPortalPages"
    t.boolean  "OptionsCspUpgradeInsecureRequests"
    t.boolean  "OptionsContentSniffingProtection"
    t.boolean  "OptionsBrowserXssProtection"
    t.boolean  "OptionsReferrerPolicyOriginWhenCrossOrigin"
    t.text     "Description",                                limit: 65535
    t.string   "MasterLabel"
    t.string   "AnalyticsTrackingCode",                      limit: 40
    t.string   "SiteType",                                   limit: 40
    t.string   "ClickjackProtectionLevel",                   limit: 40
    t.integer  "DailyBandwidthLimit"
    t.integer  "DailyBandwidthUsed"
    t.integer  "DailyRequestTimeLimit"
    t.integer  "DailyRequestTimeUsed"
    t.integer  "MonthlyPageViewsEntitlement"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                                limit: 18,    collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                           limit: 18,    collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AdminId"], name: "CSIX_AdminId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["GuestUserId"], name: "CSIX_GuestUserId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SiteFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SiteHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "SiteId",             limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["SiteId"], name: "CSIX_SiteId", using: :btree
  end

  create_table "SkyEditor2__SearchCondition__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",                            limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",                               limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",                        limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                   limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "SkyEditor2__ConditionName__c"
    t.text     "SkyEditor2__Condition__c",           limit: 16777215
    t.string   "SkyEditor2__PageName__c"
    t.string   "SkyEditor2__SearchConditionName__c"
    t.text     "SkyEditor2__SearchFieldFromTo__c",   limit: 16777215
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SkyEditor2__SkyEditorDummy__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",                            limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",                               limit: 80
    t.string   "RecordTypeId",                       limit: 18,       collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                        limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                   limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.date     "LastActivityDate"
    t.boolean  "SkyEditor2__Checkbox__c"
    t.bigint   "SkyEditor2__Currency__c"
    t.date     "SkyEditor2__Date__c"
    t.datetime "SkyEditor2__Datetime__c"
    t.string   "SkyEditor2__Email__c",               limit: 80
    t.date     "SkyEditor2__Event_EndDate__c"
    t.string   "SkyEditor2__Event_EndTime__c",       limit: 8
    t.date     "SkyEditor2__Event_StartDate__c"
    t.string   "SkyEditor2__Event_StartTime__c",     limit: 8
    t.text     "SkyEditor2__Html__c",                limit: 16777215
    t.boolean  "SkyEditor2__IsError__c"
    t.boolean  "SkyEditor2__IsTextError__c"
    t.boolean  "SkyEditor2__IsURLError__c"
    t.text     "SkyEditor2__LongTextArea__c",        limit: 16777215
    t.text     "SkyEditor2__MultiselectPicklist__c", limit: 65535
    t.bigint   "SkyEditor2__Number__c"
    t.string   "SkyEditor2__Parent__c",              limit: 18,       collation: "latin2_general_ci"
    t.bigint   "SkyEditor2__Percent__c"
    t.string   "SkyEditor2__Phone__c",               limit: 40
    t.string   "SkyEditor2__Picklist__c"
    t.string   "SkyEditor2__Text__c"
    t.string   "SkyEditor2__Textarea__c"
    t.string   "SkyEditor2__URL__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["RecordTypeId"], name: "CSIX_RecordTypeId", using: :btree
    t.index ["SkyEditor2__Parent__c"], name: "CSIX_SkyEditor2__Parent__c", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SocialPersona", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "Provider"
    t.string   "ExternalId"
    t.boolean  "IsDefault"
    t.string   "ExternalPictureURL"
    t.string   "ProfileUrl"
    t.string   "SourceApp"
    t.string   "AuthorLabels"
    t.boolean  "IsVerified"
    t.integer  "InfluencerScore"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SocialPersonaHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "SocialPersonaId",    limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["SocialPersonaId"], name: "CSIX_SocialPersonaId", using: :btree
  end

  create_table "SocialPost", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",            limit: 18,                                collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,                                collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,                                collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "Headline"
    t.datetime "Posted"
    t.string   "Provider"
    t.string   "Handle"
    t.string   "LikedBy"
    t.decimal  "AnalyzerScore",                       precision: 20, scale: 5
    t.string   "Language"
    t.decimal  "ReviewScore",                         precision: 20, scale: 4
    t.decimal  "ReviewScale",                         precision: 20, scale: 4
    t.string   "HiddenById",         limit: 18,                                collation: "latin2_general_ci"
    t.text     "Notes",              limit: 16777215
    t.string   "TruncatedContent"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["HiddenById"], name: "CSIX_HiddenById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SocialPostFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SocialPostHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "SocialPostId",       limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["SocialPostId"], name: "CSIX_SocialPostId", using: :btree
  end

  create_table "SocialPostShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccessLevel",        limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "Solution", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "SolutionNumber",        limit: 30
    t.string   "SolutionName"
    t.boolean  "IsPublished"
    t.boolean  "IsPublishedInPublicKb"
    t.string   "Status",                limit: 40
    t.boolean  "IsReviewed"
    t.text     "SolutionNote",          limit: 16777215
    t.string   "OwnerId",               limit: 18,       collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",           limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",      limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.integer  "TimesUsed"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.boolean  "IsHtml"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SolutionFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "SolutionHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "SolutionId",         limit: 18, collation: "latin2_general_ci"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "Field"
    t.string   "OldValue"
    t.string   "NewValue"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["IsDeleted", "CreatedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["SolutionId"], name: "CSIX_SolutionId", using: :btree
  end

  create_table "SolutionStatus", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "MasterLabel"
    t.string   "ApiName"
    t.integer  "SortOrder"
    t.boolean  "IsDefault"
    t.boolean  "IsReviewed"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Stamp", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "MasterLabel",        limit: 50
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "Description"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "StampAssignment", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "StampId",            limit: 18, collation: "latin2_general_ci"
    t.string   "SubjectId",          limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["StampId"], name: "CSIX_StampId", using: :btree
    t.index ["SubjectId"], name: "CSIX_SubjectId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "StaticResource", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "NamespacePrefix",    limit: 15
    t.string   "Name"
    t.string   "ContentType",        limit: 120
    t.integer  "BodyLength"
    t.text     "Body",               limit: 4294967295, collation: "latin2_general_ci"
    t.string   "Description"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,         collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,         collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "CacheControl",       limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "StreamingChannel", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",            limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",               limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.boolean  "IsDynamic"
    t.string   "Description"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "StreamingChannelShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccessLevel",        limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "Task", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "WhoId",                                     limit: 18,       collation: "latin2_general_ci"
    t.string   "WhatId",                                    limit: 18,       collation: "latin2_general_ci"
    t.string   "Subject"
    t.date     "ActivityDate"
    t.string   "Status",                                    limit: 40
    t.string   "Priority",                                  limit: 40
    t.boolean  "IsHighPriority"
    t.string   "OwnerId",                                   limit: 18,       collation: "latin2_general_ci"
    t.text     "Description",                               limit: 16777215
    t.boolean  "IsDeleted"
    t.string   "AccountId",                                 limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsClosed"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                               limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                          limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsArchived"
    t.integer  "CallDurationInSeconds"
    t.string   "CallType",                                  limit: 40
    t.string   "CallDisposition"
    t.string   "CallObject"
    t.datetime "ReminderDateTime"
    t.boolean  "IsReminderSet"
    t.string   "RecurrenceActivityId",                      limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsRecurrence"
    t.date     "RecurrenceStartDateOnly"
    t.date     "RecurrenceEndDateOnly"
    t.string   "RecurrenceTimeZoneSidKey",                  limit: 40
    t.string   "RecurrenceType",                            limit: 40
    t.integer  "RecurrenceInterval"
    t.integer  "RecurrenceDayOfWeekMask"
    t.integer  "RecurrenceDayOfMonth"
    t.string   "RecurrenceInstance",                        limit: 40
    t.string   "RecurrenceMonthOfYear",                     limit: 40
    t.string   "RecurrenceRegeneratedType",                 limit: 40
    t.string   "TaskSubtype",                               limit: 40
    t.string   "ScheduleOnce__Cancel_reschedule_reason__c"
    t.string   "ScheduleOnce__Event_status__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["RecurrenceActivityId"], name: "CSIX_RecurrenceActivityId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["WhatId"], name: "CSIX_WhatId", using: :btree
    t.index ["WhoId"], name: "CSIX_WhoId", using: :btree
  end

  create_table "TaskFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "TaskPriority", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "MasterLabel"
    t.string   "ApiName"
    t.integer  "SortOrder"
    t.boolean  "IsDefault"
    t.boolean  "IsHighPriority"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "TaskStatus", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "MasterLabel"
    t.string   "ApiName"
    t.integer  "SortOrder"
    t.boolean  "IsDefault"
    t.boolean  "IsClosed"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "TenantUsageEntitlement", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",          limit: 18,                           collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",     limit: 18,                           collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ResourceGroupKey",     limit: 120
    t.string   "Setting",              limit: 120
    t.date     "StartDate"
    t.date     "EndDate"
    t.bigint   "CurrentAmountAllowed"
    t.string   "Frequency"
    t.boolean  "IsPersistentResource"
    t.boolean  "HasRollover"
    t.decimal  "OverageGrace",                     precision: 20, scale: 4
    t.bigint   "AmountUsed"
    t.datetime "UsageDate"
    t.string   "MasterLabel"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "TestSuiteMembership", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ApexTestSuiteId",    limit: 18, collation: "latin2_general_ci"
    t.string   "ApexClassId",        limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ApexClassId"], name: "CSIX_ApexClassId", using: :btree
    t.index ["ApexTestSuiteId"], name: "CSIX_ApexTestSuiteId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ThirdPartyAccountLink", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ThirdPartyAccountLinkKey"
    t.string   "UserId",                   limit: 18,    collation: "latin2_general_ci"
    t.string   "SsoProviderId",            limit: 18,    collation: "latin2_general_ci"
    t.text     "Handle",                   limit: 65535
    t.string   "RemoteIdentifier",         limit: 128
    t.string   "Provider",                 limit: 128
    t.string   "SsoProviderName"
    t.boolean  "IsNotSsoUsable"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["SsoProviderId"], name: "CSIX_SsoProviderId", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "TodayGoal", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",            limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.bigint   "Value"
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "TodayGoalShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccessLevel",        limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "Topic", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",               limit: 99
    t.text     "Description",        limit: 65535
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.integer  "TalkingAbout"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "TopicAssignment", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "TopicId",            limit: 18, collation: "latin2_general_ci"
    t.string   "EntityId",           limit: 18, collation: "latin2_general_ci"
    t.string   "EntityKeyPrefix",    limit: 3
    t.string   "EntityType",         limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["EntityId"], name: "CSIX_EntityId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["TopicId"], name: "CSIX_TopicId", using: :btree
  end

  create_table "TopicFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "TopicUserEvent", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "TopicId",            limit: 18, collation: "latin2_general_ci"
    t.string   "ActionEnum",         limit: 40
    t.datetime "CreatedDate"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedDate"], name: "CSIX_CreatedDate", using: :btree
    t.index ["TopicId"], name: "CSIX_TopicId", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "UndecidedEventRelation", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "RelationId",         limit: 18, collation: "latin2_general_ci"
    t.string   "EventId",            limit: 18, collation: "latin2_general_ci"
    t.datetime "RespondedDate"
    t.string   "Response"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.boolean  "IsDeleted"
    t.string   "Type",               limit: 50
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["EventId"], name: "CSIX_EventId", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["RelationId"], name: "CSIX_RelationId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "User", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Username",                                           limit: 80
    t.string   "LastName",                                           limit: 80
    t.string   "FirstName",                                          limit: 40
    t.string   "Name",                                               limit: 121
    t.string   "CompanyName",                                        limit: 80
    t.string   "Division",                                           limit: 80
    t.string   "Department",                                         limit: 80
    t.string   "Title",                                              limit: 80
    t.string   "Street"
    t.string   "City",                                               limit: 40
    t.string   "State",                                              limit: 80
    t.string   "PostalCode",                                         limit: 20
    t.string   "Country",                                            limit: 80
    t.decimal  "Latitude",                                                         precision: 20, scale: 17
    t.decimal  "Longitude",                                                        precision: 20, scale: 17
    t.string   "GeocodeAccuracy",                                    limit: 40
    t.string   "Address",                                            limit: 16
    t.string   "Email",                                              limit: 128
    t.boolean  "EmailPreferencesAutoBcc"
    t.boolean  "EmailPreferencesAutoBccStayInTouch"
    t.boolean  "EmailPreferencesStayInTouchReminder"
    t.string   "SenderEmail",                                        limit: 80
    t.string   "SenderName",                                         limit: 80
    t.text     "Signature",                                          limit: 65535
    t.string   "StayInTouchSubject",                                 limit: 80
    t.text     "StayInTouchSignature",                               limit: 65535
    t.text     "StayInTouchNote",                                    limit: 65535
    t.string   "Phone",                                              limit: 40
    t.string   "Fax",                                                limit: 40
    t.string   "MobilePhone",                                        limit: 40
    t.string   "Alias",                                              limit: 8
    t.string   "CommunityNickname",                                  limit: 40
    t.string   "BadgeText",                                          limit: 80
    t.boolean  "IsActive"
    t.string   "TimeZoneSidKey",                                     limit: 40
    t.string   "UserRoleId",                                         limit: 18,                              collation: "latin2_general_ci"
    t.string   "LocaleSidKey",                                       limit: 40
    t.boolean  "ReceivesInfoEmails"
    t.boolean  "ReceivesAdminInfoEmails"
    t.string   "EmailEncodingKey",                                   limit: 40
    t.string   "ProfileId",                                          limit: 18,                              collation: "latin2_general_ci"
    t.string   "UserType",                                           limit: 40
    t.string   "LanguageLocaleKey",                                  limit: 40
    t.string   "EmployeeNumber",                                     limit: 20
    t.string   "DelegatedApproverId",                                limit: 18,                              collation: "latin2_general_ci"
    t.string   "ManagerId",                                          limit: 18,                              collation: "latin2_general_ci"
    t.datetime "LastLoginDate"
    t.datetime "LastPasswordChangeDate"
    t.datetime "CreatedDate"
    t.string   "CreatedById",                                        limit: 18,                              collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                                   limit: 18,                              collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "OfflineTrialExpirationDate"
    t.datetime "OfflinePdaTrialExpirationDate"
    t.boolean  "UserPermissionsMarketingUser"
    t.boolean  "UserPermissionsOfflineUser"
    t.boolean  "UserPermissionsAvantgoUser"
    t.boolean  "UserPermissionsCallCenterAutoLogin"
    t.boolean  "UserPermissionsMobileUser"
    t.boolean  "UserPermissionsSFContentUser"
    t.boolean  "UserPermissionsInteractionUser"
    t.boolean  "UserPermissionsSupportUser"
    t.boolean  "UserPermissionsJigsawProspectingUser"
    t.boolean  "UserPermissionsChatterAnswersUser"
    t.boolean  "ForecastEnabled"
    t.boolean  "UserPreferencesActivityRemindersPopup"
    t.boolean  "UserPreferencesEventRemindersCheckboxDefault"
    t.boolean  "UserPreferencesTaskRemindersCheckboxDefault"
    t.boolean  "UserPreferencesReminderSoundOff"
    t.boolean  "UserPreferencesDisableAllFeedsEmail"
    t.boolean  "UserPreferencesDisableFollowersEmail"
    t.boolean  "UserPreferencesDisableProfilePostEmail"
    t.boolean  "UserPreferencesDisableChangeCommentEmail"
    t.boolean  "UserPreferencesDisableLaterCommentEmail"
    t.boolean  "UserPreferencesDisProfPostCommentEmail"
    t.boolean  "UserPreferencesApexPagesDeveloperMode"
    t.boolean  "UserPreferencesHideCSNGetChatterMobileTask"
    t.boolean  "UserPreferencesDisableMentionsPostEmail"
    t.boolean  "UserPreferencesDisMentionsCommentEmail"
    t.boolean  "UserPreferencesHideCSNDesktopTask"
    t.boolean  "UserPreferencesHideChatterOnboardingSplash"
    t.boolean  "UserPreferencesHideSecondChatterOnboardingSplash"
    t.boolean  "UserPreferencesDisCommentAfterLikeEmail"
    t.boolean  "UserPreferencesDisableLikeEmail"
    t.boolean  "UserPreferencesSortFeedByComment"
    t.boolean  "UserPreferencesDisableMessageEmail"
    t.boolean  "UserPreferencesJigsawListUser"
    t.boolean  "UserPreferencesDisableBookmarkEmail"
    t.boolean  "UserPreferencesDisableSharePostEmail"
    t.boolean  "UserPreferencesEnableAutoSubForFeeds"
    t.boolean  "UserPreferencesDisableFileShareNotificationsForApi"
    t.boolean  "UserPreferencesShowTitleToExternalUsers"
    t.boolean  "UserPreferencesShowManagerToExternalUsers"
    t.boolean  "UserPreferencesShowEmailToExternalUsers"
    t.boolean  "UserPreferencesShowWorkPhoneToExternalUsers"
    t.boolean  "UserPreferencesShowMobilePhoneToExternalUsers"
    t.boolean  "UserPreferencesShowFaxToExternalUsers"
    t.boolean  "UserPreferencesShowStreetAddressToExternalUsers"
    t.boolean  "UserPreferencesShowCityToExternalUsers"
    t.boolean  "UserPreferencesShowStateToExternalUsers"
    t.boolean  "UserPreferencesShowPostalCodeToExternalUsers"
    t.boolean  "UserPreferencesShowCountryToExternalUsers"
    t.boolean  "UserPreferencesShowProfilePicToGuestUsers"
    t.boolean  "UserPreferencesShowTitleToGuestUsers"
    t.boolean  "UserPreferencesShowCityToGuestUsers"
    t.boolean  "UserPreferencesShowStateToGuestUsers"
    t.boolean  "UserPreferencesShowPostalCodeToGuestUsers"
    t.boolean  "UserPreferencesShowCountryToGuestUsers"
    t.boolean  "UserPreferencesHideS1BrowserUI"
    t.boolean  "UserPreferencesDisableEndorsementEmail"
    t.boolean  "UserPreferencesPathAssistantCollapsed"
    t.boolean  "UserPreferencesCacheDiagnostics"
    t.boolean  "UserPreferencesShowEmailToGuestUsers"
    t.boolean  "UserPreferencesShowManagerToGuestUsers"
    t.boolean  "UserPreferencesShowWorkPhoneToGuestUsers"
    t.boolean  "UserPreferencesShowMobilePhoneToGuestUsers"
    t.boolean  "UserPreferencesShowFaxToGuestUsers"
    t.boolean  "UserPreferencesShowStreetAddressToGuestUsers"
    t.boolean  "UserPreferencesLightningExperiencePreferred"
    t.boolean  "UserPreferencesPreviewLightning"
    t.boolean  "UserPreferencesHideEndUserOnboardingAssistantModal"
    t.boolean  "UserPreferencesHideLightningMigrationModal"
    t.boolean  "UserPreferencesHideSfxWelcomeMat"
    t.boolean  "UserPreferencesHideBiggerPhotoCallout"
    t.boolean  "UserPreferencesGlobalNavBarWTShown"
    t.boolean  "UserPreferencesGlobalNavGridMenuWTShown"
    t.boolean  "UserPreferencesCreateLEXAppsWTShown"
    t.boolean  "UserPreferencesFavoritesWTShown"
    t.boolean  "UserPreferencesRecordHomeSectionCollapseWTShown"
    t.boolean  "UserPreferencesRecordHomeReservedWTShown"
    t.boolean  "UserPreferencesFavoritesShowTopFavorites"
    t.boolean  "UserPreferencesExcludeMailAppAttachments"
    t.boolean  "UserPreferencesSuppressTaskSFXReminders"
    t.boolean  "UserPreferencesSuppressEventSFXReminders"
    t.boolean  "UserPreferencesPreviewCustomTheme"
    t.boolean  "UserPreferencesHasCelebrationBadge"
    t.string   "ContactId",                                          limit: 18,                              collation: "latin2_general_ci"
    t.string   "AccountId",                                          limit: 18,                              collation: "latin2_general_ci"
    t.string   "CallCenterId",                                       limit: 18,                              collation: "latin2_general_ci"
    t.string   "Extension",                                          limit: 40
    t.text     "FederationIdentifier",                               limit: 65535
    t.text     "AboutMe",                                            limit: 65535
    t.text     "FullPhotoUrl",                                       limit: 65535
    t.text     "SmallPhotoUrl",                                      limit: 65535
    t.boolean  "IsExtIndicatorVisible"
    t.string   "OutOfOfficeMessage",                                 limit: 40
    t.text     "MediumPhotoUrl",                                     limit: 65535
    t.string   "DigestFrequency",                                    limit: 40
    t.string   "DefaultGroupNotificationFrequency",                  limit: 40
    t.integer  "JigsawImportLimitOverride"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.text     "BannerPhotoUrl",                                     limit: 65535
    t.text     "SmallBannerPhotoUrl",                                limit: 65535
    t.text     "MediumBannerPhotoUrl",                               limit: 65535
    t.boolean  "IsProfilePhotoActive"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["AccountId"], name: "CSIX_AccountId", using: :btree
    t.index ["CallCenterId"], name: "CSIX_CallCenterId", using: :btree
    t.index ["ContactId"], name: "CSIX_ContactId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["DelegatedApproverId"], name: "CSIX_DelegatedApproverId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ManagerId"], name: "CSIX_ManagerId", using: :btree
    t.index ["ProfileId"], name: "CSIX_ProfileId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserRoleId"], name: "CSIX_UserRoleId", using: :btree
  end

  create_table "UserAppInfo", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "FormFactor"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "UserAppMenuCustomization", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",            limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ApplicationId",      limit: 18, collation: "latin2_general_ci"
    t.integer  "SortOrder"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ApplicationId"], name: "CSIX_ApplicationId", using: :btree
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "UserAppMenuCustomizationShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccessLevel",        limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "UserAppMenuItem", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "AppMenuItemId"
    t.string   "ApplicationId",             limit: 18,  collation: "latin2_general_ci"
    t.string   "Label",                     limit: 80
    t.string   "Description",               limit: 250
    t.string   "Name",                      limit: 250
    t.integer  "UserSortOrder"
    t.integer  "SortOrder"
    t.string   "Type"
    t.string   "LogoUrl"
    t.string   "IconUrl"
    t.string   "InfoUrl"
    t.string   "StartUrl"
    t.string   "MobileStartUrl"
    t.boolean  "IsVisible"
    t.boolean  "IsUsingAdminAuthorization"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ApplicationId"], name: "CSIX_ApplicationId", using: :btree
  end

  create_table "UserEntityAccess", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "DurableId"
    t.string   "UserId",             limit: 18,  collation: "latin2_general_ci"
    t.boolean  "IsMergeable"
    t.boolean  "IsUpdatable"
    t.boolean  "IsActivateable"
    t.boolean  "IsReadable"
    t.boolean  "IsCreatable"
    t.boolean  "IsEditable"
    t.boolean  "IsDeletable"
    t.boolean  "IsUndeletable"
    t.boolean  "IsFlsUpdatable"
    t.string   "EntityDefinitionId", limit: 150
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "UserFeed", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18,    collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.string   "CreatedById",        limit: 18,    collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.boolean  "IsDeleted"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.integer  "CommentCount"
    t.integer  "LikeCount"
    t.string   "Title"
    t.text     "Body",               limit: 65535
    t.text     "LinkUrl",            limit: 65535
    t.boolean  "IsRichText"
    t.string   "RelatedRecordId",    limit: 18,    collation: "latin2_general_ci"
    t.string   "InsertedById",       limit: 18,    collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["InsertedById"], name: "CSIX_InsertedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["RelatedRecordId"], name: "CSIX_RelatedRecordId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "UserFieldAccess", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "DurableId"
    t.string   "UserId",             limit: 18,  collation: "latin2_general_ci"
    t.boolean  "IsUpdatable"
    t.boolean  "IsCreatable"
    t.boolean  "IsAccessible"
    t.string   "EntityDefinitionId", limit: 150
    t.string   "FieldDefinitionId",  limit: 150
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "UserLicense", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "LicenseDefinitionKey",    limit: 40
    t.integer  "TotalLicenses"
    t.string   "Status",                  limit: 40
    t.integer  "UsedLicenses"
    t.datetime "UsedLicensesLastUpdated"
    t.string   "Name",                    limit: 40
    t.string   "MasterLabel",             limit: 80
    t.datetime "CreatedDate"
    t.datetime "LastModifiedDate"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "UserListView", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "ListViewId",         limit: 18, collation: "latin2_general_ci"
    t.string   "SobjectType"
    t.string   "LastViewedChart"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ListViewId"], name: "CSIX_ListViewId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "UserListViewCriterion", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "UserListViewId",     limit: 18, collation: "latin2_general_ci"
    t.integer  "SortOrder"
    t.string   "ColumnName",         limit: 40
    t.string   "Operation"
    t.string   "Value",              limit: 85
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserListViewId"], name: "CSIX_UserListViewId", using: :btree
  end

  create_table "UserLogin", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsFrozen"
    t.boolean  "IsPasswordLocked"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "UserPackageLicense", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "PackageLicenseId",   limit: 18, collation: "latin2_general_ci"
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["PackageLicenseId"], name: "CSIX_PackageLicenseId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "UserPermissionAccess", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.datetime "LastCacheUpdate"
    t.boolean  "PermissionsEmailSingle"
    t.boolean  "PermissionsEmailMass"
    t.boolean  "PermissionsEditTask"
    t.boolean  "PermissionsEditEvent"
    t.boolean  "PermissionsExportReport"
    t.boolean  "PermissionsImportPersonal"
    t.boolean  "PermissionsDataExport"
    t.boolean  "PermissionsManageUsers"
    t.boolean  "PermissionsEditPublicFilters"
    t.boolean  "PermissionsEditPublicTemplates"
    t.boolean  "PermissionsModifyAllData"
    t.boolean  "PermissionsManageCases"
    t.boolean  "PermissionsMassInlineEdit"
    t.boolean  "PermissionsManageSolutions"
    t.boolean  "PermissionsCustomizeApplication"
    t.boolean  "PermissionsEditReadonlyFields"
    t.boolean  "PermissionsRunReports"
    t.boolean  "PermissionsViewSetup"
    t.boolean  "PermissionsTransferAnyEntity"
    t.boolean  "PermissionsNewReportBuilder"
    t.boolean  "PermissionsActivateContract"
    t.boolean  "PermissionsImportLeads"
    t.boolean  "PermissionsManageLeads"
    t.boolean  "PermissionsTransferAnyLead"
    t.boolean  "PermissionsViewAllData"
    t.boolean  "PermissionsEditPublicDocuments"
    t.boolean  "PermissionsViewEncryptedData"
    t.boolean  "PermissionsEditBrandTemplates"
    t.boolean  "PermissionsEditHtmlTemplates"
    t.boolean  "PermissionsChatterInternalUser"
    t.boolean  "PermissionsManageDashboards"
    t.boolean  "PermissionsDeleteActivatedContract"
    t.boolean  "PermissionsChatterInviteExternalUsers"
    t.boolean  "PermissionsSendSitRequests"
    t.boolean  "PermissionsApiUserOnly"
    t.boolean  "PermissionsManageRemoteAccess"
    t.boolean  "PermissionsCanUseNewDashboardBuilder"
    t.boolean  "PermissionsManageCategories"
    t.boolean  "PermissionsConvertLeads"
    t.boolean  "PermissionsPasswordNeverExpires"
    t.boolean  "PermissionsUseTeamReassignWizards"
    t.boolean  "PermissionsInstallPackaging"
    t.boolean  "PermissionsPublishPackaging"
    t.boolean  "PermissionsChatterOwnGroups"
    t.boolean  "PermissionsEditOppLineItemUnitPrice"
    t.boolean  "PermissionsCreatePackaging"
    t.boolean  "PermissionsBulkApiHardDelete"
    t.boolean  "PermissionsInboundMigrationToolsUser"
    t.boolean  "PermissionsSolutionImport"
    t.boolean  "PermissionsManageCallCenters"
    t.boolean  "PermissionsEditReports"
    t.boolean  "PermissionsManageSynonyms"
    t.boolean  "PermissionsOutboundMigrationToolsUser"
    t.boolean  "PermissionsViewContent"
    t.boolean  "PermissionsManageEmailClientConfig"
    t.boolean  "PermissionsEnableNotifications"
    t.boolean  "PermissionsManageDataIntegrations"
    t.boolean  "PermissionsDistributeFromPersWksp"
    t.boolean  "PermissionsViewDataCategories"
    t.boolean  "PermissionsManageDataCategories"
    t.boolean  "PermissionsAuthorApex"
    t.boolean  "PermissionsManageMobile"
    t.boolean  "PermissionsApiEnabled"
    t.boolean  "PermissionsManageCustomReportTypes"
    t.boolean  "PermissionsEditCaseComments"
    t.boolean  "PermissionsTransferAnyCase"
    t.boolean  "PermissionsContentAdministrator"
    t.boolean  "PermissionsCreateWorkspaces"
    t.boolean  "PermissionsManageContentPermissions"
    t.boolean  "PermissionsManageContentProperties"
    t.boolean  "PermissionsManageContentTypes"
    t.boolean  "PermissionsScheduleJob"
    t.boolean  "PermissionsManageExchangeConfig"
    t.boolean  "PermissionsManageAnalyticSnapshots"
    t.boolean  "PermissionsScheduleReports"
    t.boolean  "PermissionsManageBusinessHourHolidays"
    t.boolean  "PermissionsCustomSidebarOnAllPages"
    t.boolean  "PermissionsManageInteraction"
    t.boolean  "PermissionsViewMyTeamsDashboards"
    t.boolean  "PermissionsModerateChatter"
    t.boolean  "PermissionsResetPasswords"
    t.boolean  "PermissionsFlowUFLRequired"
    t.boolean  "PermissionsCanInsertFeedSystemFields"
    t.boolean  "PermissionsEmailTemplateManagement"
    t.boolean  "PermissionsEmailAdministration"
    t.boolean  "PermissionsManageChatterMessages"
    t.boolean  "PermissionsAllowEmailIC"
    t.boolean  "PermissionsChatterFileLink"
    t.boolean  "PermissionsForceTwoFactor"
    t.boolean  "PermissionsViewEventLogFiles"
    t.boolean  "PermissionsManageNetworks"
    t.boolean  "PermissionsManageAuthProviders"
    t.boolean  "PermissionsRunFlow"
    t.boolean  "PermissionsViewAllUsers"
    t.boolean  "PermissionsConnectOrgToEnvironmentHub"
    t.boolean  "PermissionsCreateCustomizeFilters"
    t.boolean  "PermissionsGovernNetworks"
    t.boolean  "PermissionsSalesConsole"
    t.boolean  "PermissionsTwoFactorApi"
    t.boolean  "PermissionsDeleteTopics"
    t.boolean  "PermissionsEditTopics"
    t.boolean  "PermissionsCreateTopics"
    t.boolean  "PermissionsAssignTopics"
    t.boolean  "PermissionsIdentityEnabled"
    t.boolean  "PermissionsIdentityConnect"
    t.boolean  "PermissionsContentWorkspaces"
    t.boolean  "PermissionsCustomMobileAppsAccess"
    t.boolean  "PermissionsViewHelpLink"
    t.boolean  "PermissionsManageProfilesPermissionsets"
    t.boolean  "PermissionsAssignPermissionSets"
    t.boolean  "PermissionsManageRoles"
    t.boolean  "PermissionsManageIpAddresses"
    t.boolean  "PermissionsManageSharing"
    t.boolean  "PermissionsManageInternalUsers"
    t.boolean  "PermissionsManagePasswordPolicies"
    t.boolean  "PermissionsManageLoginAccessPolicies"
    t.boolean  "PermissionsManageCustomPermissions"
    t.boolean  "PermissionsCanVerifyComment"
    t.boolean  "PermissionsManageUnlistedGroups"
    t.boolean  "PermissionsManageTwoFactor"
    t.boolean  "PermissionsLightningExperienceUser"
    t.boolean  "PermissionsConfigCustomRecs"
    t.boolean  "PermissionsSubmitMacrosAllowed"
    t.boolean  "PermissionsBulkMacrosAllowed"
    t.boolean  "PermissionsManageSessionPermissionSets"
    t.boolean  "PermissionsSendAnnouncementEmails"
    t.boolean  "PermissionsChatterEditOwnPost"
    t.boolean  "PermissionsChatterEditOwnRecordPost"
    t.boolean  "PermissionsManageSandboxes"
    t.boolean  "PermissionsImportCustomObjects"
    t.boolean  "PermissionsDelegatedTwoFactor"
    t.boolean  "PermissionsChatterComposeUiCodesnippet"
    t.boolean  "PermissionsSelectFilesFromSalesforce"
    t.boolean  "PermissionsModerateNetworkUsers"
    t.boolean  "PermissionsMergeTopics"
    t.boolean  "PermissionsSubscribeToLightningReports"
    t.boolean  "PermissionsManagePvtRptsAndDashbds"
    t.boolean  "PermissionsAllowLightningLogin"
    t.boolean  "PermissionsCampaignInfluence2"
    t.boolean  "PermissionsViewDataAssessment"
    t.boolean  "PermissionsRemoveDirectMessageMembers"
    t.boolean  "PermissionsCanApproveFeedPost"
    t.boolean  "PermissionsAddDirectMessageMembers"
    t.boolean  "PermissionsAllowViewEditConvertedLeads"
    t.boolean  "PermissionsSocialInsightsLogoAdmin"
    t.boolean  "PermissionsShowCompanyNameAsUserBadge"
    t.boolean  "PermissionsAccessCMC"
    t.boolean  "PermissionsViewHealthCheck"
    t.boolean  "PermissionsManageHealthCheck"
    t.boolean  "PermissionsPackaging2"
    t.boolean  "PermissionsManageCertificates"
    t.boolean  "PermissionsPreventClassicExperience"
    t.boolean  "PermissionsHideReadByList"
    t.boolean  "PermissionsListEmailSend"
    t.boolean  "PermissionsFeedPinning"
    t.boolean  "PermissionsChangeDashboardColors"
    t.boolean  "PermissionsUseWebLink"
    t.boolean  "PermissionsViewAllActivities"
    t.boolean  "PermissionsLightningConsoleAllowedForUser"
    t.boolean  "PermissionsSubscribeToLightningDashboards"
    t.boolean  "PermissionsPardotUser"
    t.boolean  "PermissionsApexRestServices"
    t.boolean  "PermissionsEnableCommunityAppLauncher"
    t.boolean  "PermissionsManageSurveys"
    t.boolean  "PermissionsViewRoles"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.boolean  "PermissionsAutomaticActivityCapture"
    t.boolean  "PermissionsViewOnlyEmbeddedAppUser"
  end

  create_table "UserPreference", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UserId",             limit: 18,    collation: "latin2_general_ci"
    t.string   "Preference",         limit: 40
    t.text     "Value",              limit: 65535
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "UserRecordAccess", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "RecordId",           limit: 40
    t.boolean  "HasReadAccess"
    t.boolean  "HasEditAccess"
    t.boolean  "HasDeleteAccess"
    t.boolean  "HasTransferAccess"
    t.boolean  "HasAllAccess"
    t.string   "MaxAccessLevel",     limit: 40
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "UserRole", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "Name",                             limit: 80
    t.string   "ParentRoleId",                     limit: 18, collation: "latin2_general_ci"
    t.string   "RollupDescription",                limit: 80
    t.string   "OpportunityAccessForAccountOwner", limit: 40
    t.string   "CaseAccessForAccountOwner",        limit: 40
    t.string   "ContactAccessForAccountOwner",     limit: 40
    t.string   "ForecastUserId",                   limit: 18, collation: "latin2_general_ci"
    t.boolean  "MayForecastManagerShare"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                 limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "DeveloperName",                    limit: 80
    t.string   "PortalAccountId",                  limit: 18, collation: "latin2_general_ci"
    t.string   "PortalType",                       limit: 40
    t.string   "PortalAccountOwnerId",             limit: 18, collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ForecastUserId"], name: "CSIX_ForecastUserId", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentRoleId"], name: "CSIX_ParentRoleId", using: :btree
    t.index ["PortalAccountId"], name: "CSIX_PortalAccountId", using: :btree
    t.index ["PortalAccountOwnerId"], name: "CSIX_PortalAccountOwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "UserShare", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "UserId",             limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "UserAccessLevel",    limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsActive"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "VerificationHistory", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.integer  "EventGroup"
    t.datetime "VerificationTime"
    t.string   "VerificationMethod"
    t.string   "UserId",             limit: 18,  collation: "latin2_general_ci"
    t.string   "Activity"
    t.string   "Status"
    t.string   "LoginHistoryId",     limit: 18,  collation: "latin2_general_ci"
    t.string   "SourceIp",           limit: 200
    t.string   "LoginGeoId",         limit: 18,  collation: "latin2_general_ci"
    t.string   "Remarks"
    t.string   "ResourceId",         limit: 18,  collation: "latin2_general_ci"
    t.string   "Policy"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,  collation: "latin2_general_ci"
    t.string   "LastModifiedById",   limit: 18,  collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.boolean  "IsDeleted"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LoginGeoId"], name: "CSIX_LoginGeoId", using: :btree
    t.index ["LoginHistoryId"], name: "CSIX_LoginHistoryId", using: :btree
    t.index ["ResourceId"], name: "CSIX_ResourceId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["UserId"], name: "CSIX_UserId", using: :btree
  end

  create_table "VisualforceAccessMetrics", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.date     "MetricsDate"
    t.string   "ApexPageId",         limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.integer  "DailyPageViewCount"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["ApexPageId"], name: "CSIX_ApexPageId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Vote", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "Type",               limit: 40
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "WaveCompatibilityCheckItem", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name"
    t.datetime "CreatedDate"
    t.string   "CreatedById",        limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "TaskName"
    t.string   "TaskResult"
    t.string   "TemplateApiName"
    t.string   "TemplateVersion",    limit: 50
    t.text     "Payload",            limit: 16777215
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "WebLink", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "PageOrSobjectType",   limit: 40
    t.string   "Name",                limit: 240
    t.boolean  "IsProtected"
    t.text     "Url",                 limit: 16777215
    t.string   "EncodingKey",         limit: 40
    t.string   "LinkType",            limit: 40
    t.string   "OpenType",            limit: 40
    t.integer  "Height"
    t.integer  "Width"
    t.boolean  "ShowsLocation"
    t.boolean  "HasScrollbars"
    t.boolean  "HasToolbar"
    t.boolean  "HasMenubar"
    t.boolean  "ShowsStatus"
    t.boolean  "IsResizable"
    t.string   "Position",            limit: 40
    t.string   "ScontrolId",          limit: 18,       collation: "latin2_general_ci"
    t.string   "MasterLabel",         limit: 240
    t.text     "Description",         limit: 65535
    t.string   "DisplayType",         limit: 40
    t.boolean  "RequireRowSelection"
    t.string   "NamespacePrefix",     limit: 15
    t.datetime "CreatedDate"
    t.string   "CreatedById",         limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",    limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["ScontrolId"], name: "CSIX_ScontrolId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "accounts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "ascendix_search__AdHocListMember__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name",                                   limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",                            limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                       limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ascendix_search__AdHocList__c",          limit: 18, collation: "latin2_general_ci"
    t.string   "ascendix_search__Account__c",            limit: 18, collation: "latin2_general_ci"
    t.string   "ascendix_search__Contact__c",            limit: 18, collation: "latin2_general_ci"
    t.string   "ascendix_search__SourceSystemNumber__c"
    t.string   "ascendix_search__SourceSystem__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
    t.index ["ascendix_search__Account__c"], name: "CSIX_ascendix_search__Account__c", using: :btree
    t.index ["ascendix_search__AdHocList__c"], name: "CSIX_ascendix_search__AdHocList__c", using: :btree
    t.index ["ascendix_search__Contact__c"], name: "CSIX_ascendix_search__Contact__c", using: :btree
  end

  create_table "ascendix_search__AdHocList__Share", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccessLevel",        limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "ascendix_search__AdHocList__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",                                limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",                                   limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",                            limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                       limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "ascendix_search__MemberType__c"
    t.string   "ascendix_search__SourceSystemNumber__c"
    t.string   "ascendix_search__SourceSystem__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ascendix_search__SearchSetting__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.boolean  "IsDeleted"
    t.string   "Name",                      limit: 38
    t.string   "SetupOwnerId",              limit: 18, collation: "latin2_general_ci"
    t.datetime "CreatedDate"
    t.string   "CreatedById",               limit: 18, collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",          limit: 18, collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.string   "ascendix_search__Value__c"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["SetupOwnerId"], name: "CSIX_SetupOwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "ascendix_search__Search__Share", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "ParentId",           limit: 18, collation: "latin2_general_ci"
    t.string   "UserOrGroupId",      limit: 18, collation: "latin2_general_ci"
    t.string   "AccessLevel",        limit: 40
    t.string   "RowCause",           limit: 40
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",   limit: 18, collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["IsDeleted", "LastModifiedDate"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["LastModifiedDate"], name: "CSIX_LastModifiedDate", using: :btree
    t.index ["ParentId"], name: "CSIX_ParentId", using: :btree
    t.index ["UserOrGroupId"], name: "CSIX_UserOrGroupId", using: :btree
  end

  create_table "ascendix_search__Search__c", primary_key: "Id", id: :string, limit: 18, collation: "latin2_general_ci", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4" do |t|
    t.string   "OwnerId",                                limit: 18,       collation: "latin2_general_ci"
    t.boolean  "IsDeleted"
    t.string   "Name",                                   limit: 80
    t.datetime "CreatedDate"
    t.string   "CreatedById",                            limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",                       limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.datetime "LastViewedDate"
    t.datetime "LastReferencedDate"
    t.string   "ascendix_search__AscendixId__c",         limit: 50
    t.string   "ascendix_search__Description__c"
    t.boolean  "ascendix_search__IsHidden__c"
    t.string   "ascendix_search__ObjectName__c"
    t.string   "ascendix_search__SourceSystemNumber__c"
    t.string   "ascendix_search__SourceSystem__c"
    t.text     "ascendix_search__Template__c",           limit: 16777215
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["OwnerId"], name: "CSIX_OwnerId", using: :btree
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "attachment_downloads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "attachment_download_key"
    t.string   "attachment_id"
    t.string   "user_key"
    t.bigint   "download_date"
    t.boolean  "is_deleted"
    t.datetime "created_at",              null: false
    t.string   "created_by"
    t.datetime "updated_at",              null: false
    t.string   "updated_by"
    t.integer  "user_id"
    t.index ["user_id"], name: "index_attachment_downloads_on_user_id", using: :btree
  end

  create_table "attachments", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "campaign_news_items", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "campaigns", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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
    t.integer  "number_of_responses"
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
    t.index ["campaign_id"], name: "index_campaigns_on_campaign_id", using: :btree
    t.index ["parent_id"], name: "index_campaigns_on_parent_id", using: :btree
    t.index ["partner__c"], name: "index_campaigns_on_partner__c", using: :btree
    t.index ["stakeholder__c"], name: "index_campaigns_on_stakeholder__c", using: :btree
  end

  create_table "contacts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "intelligence_questions", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "question"
    t.string   "question_number"
    t.string   "campaign_type"
    t.boolean  "is_deleted"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "leads", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "notes", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "notifications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "notification_key"
    t.string   "method"
    t.string   "notification_type"
    t.string   "data"
    t.boolean  "was_sent"
    t.integer  "sent_on"
    t.boolean  "is_deleted"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "opportunities", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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
    t.index ["campaign_id"], name: "index_opportunities_on_campaign_id", using: :btree
    t.index ["stage_name"], name: "index_opportunities_on_stage_name", using: :btree
  end

  create_table "opportunity_contact_roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "opportunity_feedbacks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "order_partners", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "orders", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "periods", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "role_key"
    t.string   "name"
    t.string   "description"
    t.boolean  "is_deleted"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tasks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
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

  create_table "user_roles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "user_role_key"
    t.string   "user_id"
    t.string   "user_key"
    t.string   "role_id"
    t.string   "role_key"
    t.boolean  "is_deleted"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=latin1" do |t|
    t.string   "user_key"
    t.string   "user_name"
    t.string   "password_digest"
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
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "reset_token"
    t.boolean  "force_password_change", default: false, null: false
  end

end
