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

ActiveRecord::Schema.define(version: 20180624165804) do

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
    t.index ["CreatedById"], name: "CSIX_CreatedById", using: :btree
    t.index ["IsDeleted", "SystemModstamp"], name: "CSIX_4DELETECHECK", using: :btree
    t.index ["LastModifiedById"], name: "CSIX_LastModifiedById", using: :btree
    t.index ["MasterRecordId"], name: "CSIX_MasterRecordId", using: :btree
    t.index ["Name"], name: "Account_Name_Indx", length: { Name: 191 }, using: :btree
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
    t.string   "AccountId",              limit: 18,       collation: "latin2_general_ci"
    t.string   "WhoId",                  limit: 18,       collation: "latin2_general_ci"
    t.string   "WhatId",                 limit: 18,       collation: "latin2_general_ci"
    t.string   "Subject",                limit: 80
    t.boolean  "IsTask"
    t.date     "ActivityDate"
    t.string   "OwnerId",                limit: 18,       collation: "latin2_general_ci"
    t.string   "Status",                 limit: 40
    t.string   "Priority",               limit: 40
    t.boolean  "IsHighPriority"
    t.string   "ActivityType",           limit: 40
    t.boolean  "IsClosed"
    t.boolean  "IsAllDayEvent"
    t.boolean  "IsVisibleInSelfService"
    t.integer  "DurationInMinutes"
    t.string   "Location",               limit: 80
    t.text     "Description",            limit: 16777215
    t.boolean  "IsDeleted"
    t.datetime "CreatedDate"
    t.string   "CreatedById",            limit: 18,       collation: "latin2_general_ci"
    t.datetime "LastModifiedDate"
    t.string   "LastModifiedById",       limit: 18,       collation: "latin2_general_ci"
    t.datetime "SystemModstamp"
    t.integer  "CallDurationInSeconds"
    t.string   "CallType",               limit: 40
    t.string   "CallDisposition"
    t.string   "CallObject"
    t.datetime "ReminderDateTime"
    t.boolean  "IsReminderSet"
    t.datetime "EndDateTime"
    t.datetime "StartDateTime"
    t.string   "ActivitySubtype",        limit: 40
    t.string   "AlternateDetailId",      limit: 18,       collation: "latin2_general_ci"
    t.datetime "BackupCreatedDate"
    t.datetime "BackupModifiedDate"
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
    t.index ["SystemModstamp"], name: "CSIX_SystemModstamp", using: :btree
  end

  create_table "Campaign", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "Id"
    t.integer "IsDeleted"
    t.string  "Name"
    t.string  "ParentId"
    t.string  "Type"
    t.string  "Status"
    t.bigint  "StartDate"
    t.bigint  "EndDate"
    t.string  "ExpectedRevenue"
    t.integer "BudgetedCost"
    t.integer "ActualCost"
    t.string  "ExpectedResponse"
    t.string  "NumberSent"
    t.integer "IsActive"
    t.string  "Description"
    t.integer "NumberOfLeads"
    t.integer "NumberOfConvertedLeads"
    t.integer "NumberOfContacts"
    t.integer "NumberOfResponses"
    t.integer "NumberOfOpportunities"
    t.integer "NumberOfWonOpportunities"
    t.string  "AmountAllOpportunities"
    t.string  "AmountWonOpportunities"
    t.string  "OwnerId"
    t.string  "CreatedDate"
    t.string  "CreatedById"
    t.string  "LastModifiedDate"
    t.string  "LastModifiedById"
    t.string  "SystemModstamp"
    t.integer "LastActivityDate"
    t.string  "Stakeholder__c"
    t.string  "Partner__c"
    t.string  "Campaign_News__c"
    t.string  "OTP_AcctManager_Email__c"
    t.string  "OTP_AcctManager_Name__c"
    t.string  "OTP_AcctManager_Phone__c"
    t.string  "OTP_AcctManager_Title__c"
    t.string  "IQ001__c"
    t.string  "IQ002__c"
    t.string  "IQ003__c"
    t.string  "IQ004__c"
    t.string  "IQ005__c"
    t.string  "IQ006__c"
    t.string  "IQ007__c"
    t.string  "IQ008__c"
    t.string  "IQ009__c"
    t.string  "IQ010__c"
    t.string  "IQ011__c"
    t.string  "IQ012__c"
    t.string  "IQ013__c"
    t.string  "IQ014__c"
    t.string  "IQ015__c"
    t.text    "Cover_Sheet_Text__c",                      limit: 16777215
    t.integer "Ramp_Up_Call_Scheduled__c"
    t.integer "Ramp_Up_Call_Completed__c"
    t.integer "Account_List_Sent_for_Parter_Approval__c"
    t.integer "Partner_Approved_Account_List__c"
    t.integer "Calling_Has_Begun__c"
    t.integer "Calling_Completed__c"
    t.integer "Gathering_Outstanding_Feedback__c"
    t.integer "Campaign_Completed__c"
    t.string  "List_criteria_zip_code__c"
    t.string  "List_criteria_state__c"
    t.integer "List_criteria_company_size__c"
    t.string  "List_criteria_annual_revenue__c"
    t.string  "List_criteria_date_contacted__c"
  end

  create_table "Contact", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "Id"
    t.integer "IsDeleted"
    t.string  "MasterRecordId"
    t.string  "AccountId"
    t.string  "LastName"
    t.string  "FirstName"
    t.string  "Salutation"
    t.string  "Name"
    t.string  "OtherStreet"
    t.string  "OtherCity"
    t.string  "OtherState"
    t.string  "OtherPostalCode"
    t.string  "OtherCountry"
    t.string  "MailingStreet"
    t.string  "MailingCity"
    t.string  "MailingState"
    t.string  "MailingPostalCode"
    t.string  "MailingCountry"
    t.string  "Phone"
    t.string  "Fax"
    t.string  "MobilePhone"
    t.string  "HomePhone"
    t.string  "OtherPhone"
    t.string  "AssistantPhone"
    t.string  "ReportsToId"
    t.string  "Email"
    t.string  "Title"
    t.string  "Department"
    t.string  "AssistantName"
    t.string  "LeadSource"
    t.string  "Birthdate"
    t.string  "Description"
    t.string  "OwnerId"
    t.string  "CreatedDate"
    t.string  "CreatedById"
    t.string  "LastModifiedDate"
    t.string  "LastModifiedById"
    t.string  "SystemModstamp"
    t.string  "LastActivityDate"
    t.string  "LastCURequestDate"
    t.string  "LastCUUpdateDate"
    t.string  "EmailBouncedReason"
    t.string  "EmailBouncedDate"
    t.integer "Receives_Email_Notifications__c"
    t.integer "Is_Primary_Email_Recipient__c"
  end

  create_table "Note", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "Id"
    t.integer "IsDeleted"
    t.string  "ParentId"
    t.string  "Title"
    t.integer "IsPrivate"
    t.text    "Body",             limit: 16777215
    t.string  "OwnerId"
    t.string  "CreatedDate"
    t.string  "CreatedById"
    t.string  "LastModifiedDate"
    t.string  "LastModifiedById"
    t.string  "SystemModstamp"
  end

  create_table "Opportunity", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "Id"
    t.integer  "IsDeleted"
    t.string   "AccountId"
    t.string   "Name"
    t.text     "Description",                           limit: 16777215
    t.string   "StageName"
    t.string   "Amount"
    t.integer  "Probability"
    t.string   "CloseDate"
    t.string   "Type"
    t.integer  "NextStep"
    t.integer  "LeadSource"
    t.integer  "IsClosed"
    t.integer  "IsWon"
    t.string   "ForecastCategory"
    t.string   "ForecastCategoryName"
    t.string   "CampaignId"
    t.integer  "HasOpportunityLineItem"
    t.string   "Pricebook2Id"
    t.string   "OwnerId"
    t.string   "CreatedDate"
    t.string   "CreatedById"
    t.string   "LastModifiedDate"
    t.string   "LastModifiedById"
    t.string   "SystemModstamp"
    t.integer  "LastActivityDate"
    t.integer  "FiscalQuarter"
    t.integer  "FiscalYear"
    t.string   "Fiscal"
    t.string   "LastViewedDate"
    t.string   "LastReferencedDate"
    t.integer  "HasOpenActivity"
    t.integer  "HasOverdueTask"
    t.string   "Partner__c"
    t.integer  "IsOTP_Approved__c"
    t.text     "Feedback__c",                           limit: 16777215
    t.datetime "Meeting_Date_Time__c"
    t.string   "Registered_Deal_Num__c"
    t.string   "Status__c"
    t.string   "Outcomes__c"
    t.string   "AE_Name__c"
    t.string   "EN_Placeholder__c"
    t.string   "Priority_Placeholder__c"
    t.string   "OTP_Placeholder__c"
    t.string   "Contact_and_Partner__c"
    t.string   "Appt_Info__c"
    t.string   "EN_Placeholder_2__c"
    t.string   "Placeholder_BANT__c"
    t.string   "Placeholder_BANT_Q__c"
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
    t.string   "OTP_Acct_Mgr_Name__c"
    t.integer  "Cover_Sheet_Text__c"
    t.text     "OTP_Account_Manager_Feedback__c",       limit: 16777215
    t.integer  "Business_Unit__c"
    t.string   "Partner_Sales_Rep_Name__c"
    t.string   "Partner_Sales_Rep_Phone_Number__c"
    t.string   "Partner_Sales_Rep_Email__c"
    t.string   "Partner_Account_Assigned__c"
    t.string   "Meeting_Attempt__c"
    t.string   "Meeting_Value__c"
    t.string   "Confirmation_via__c"
    t.string   "Client_PAM__c"
    t.string   "Re_schedule_Meeting_Date_Time__c"
    t.string   "Time_Zone__c"
    t.string   "OTP_Customer_Engagement_Specialist__c"
    t.integer  "Call_Objective__c"
    t.string   "Re_schedule_Reason__c"
    t.string   "Conference_Phone_Access_Number__c"
    t.string   "Solution_Brand__c"
    t.text     "OTP_CES_Feedback__c",                   limit: 16777215
    t.integer  "Initial_Meeting_Date_Time__c"
    t.string   "Partner_Joined_Call__c"
    t.string   "Prospect_Joined_Call__c"
    t.integer  "Call_Duration_in_minutes__c"
    t.text     "Next_Steps_Planned__c",                 limit: 16777215
    t.string   "Solutions_discussed_on_the_call__c"
    t.integer  "QC_Pending_QC_Rejected_Note__c"
    t.integer  "Re_schedule_Date_Time_w_Prospect__c"
    t.string   "Able_to_Re_schedule_w_Prospect__c"
    t.string   "Number_Sent_in_Campaign__c"
    t.integer  "Opportunities_in_Campaign__c"
    t.integer  "Counts_Towards_Lead_Goal__c"
    t.integer  "OpportunitySequence__c"
    t.integer  "AE_Email_Address__c"
    t.string   "BackupCreatedDate"
    t.string   "BackupModifiedDate"
    t.index ["Partner__c"], name: "Partner__c", using: :btree
    t.index ["StageName"], name: "StageName", using: :btree
  end

  create_table "OpportunityContactRole", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string  "ContactId"
    t.integer "IsDeleted"
    t.integer "IsPrimary"
    t.string  "OpportunityId"
    t.string  "Role"
    t.integer "CreatedDate"
    t.string  "CreatedById"
    t.integer "LastModifiedDate"
    t.string  "LastModifiedById"
    t.string  "SystemModstamp"
    t.integer "LastActivityDate"
  end

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
    t.integer  "user_id"
    t.index ["user_id"], name: "index_attachment_downloads_on_user_id", using: :btree
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

  create_table "notifications", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.index ["campaign_id"], name: "index_opportunities_on_campaign_id", using: :btree
    t.index ["stage_name"], name: "index_opportunities_on_stage_name", using: :btree
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
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "reset_token"
  end

end
