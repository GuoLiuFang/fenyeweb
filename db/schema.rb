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

ActiveRecord::Schema.define(version: 20170118082508) do

  create_table "charge_codes_statistic", id: false, force: :cascade do |t|
    t.integer "charge_code_id",           limit: 4
    t.integer "charge_code_amount",       limit: 4
    t.string  "charge_code_name",         limit: 512
    t.string  "charge_code_dest_number",  limit: 64
    t.string  "charge_code_instruc_t",    limit: 256
    t.string  "charge_code_instruc_no_t", limit: 256
    t.string  "yewucode_name",            limit: 256
    t.string  "union_name",               limit: 256
  end

  create_table "charge_codes_statistics", force: :cascade do |t|
    t.integer  "charge_code_id",           limit: 4
    t.integer  "charge_code_amount",       limit: 4
    t.string   "charge_code_name",         limit: 255
    t.string   "charge_code_dest_number",  limit: 255
    t.string   "charge_code_instruc_t",    limit: 255
    t.string   "charge_code_instruc_no_t", limit: 255
    t.string   "yewucode_name",            limit: 255
    t.string   "union_name",               limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  create_table "jieguohuizong", id: false, force: :cascade do |t|
    t.integer "code_event",  limit: 4
    t.string  "yuefen",      limit: 256
    t.string  "union_name",  limit: 256
    t.integer "province_id", limit: 4
    t.integer "uuid_num",    limit: 4
  end

  create_table "message_analysises", id: false, force: :cascade do |t|
    t.datetime "create_time"
    t.integer  "uuid",                     limit: 4
    t.string   "content",                  limit: 8000
    t.integer  "id",                       limit: 8
    t.string   "sc",                       limit: 256
    t.integer  "rimsi",                    limit: 8
    t.datetime "record_time"
    t.integer  "city_id",                  limit: 4
    t.string   "city_name",                limit: 256
    t.integer  "city_pro_id",              limit: 4
    t.integer  "operator_id",              limit: 4
    t.string   "operator_name",            limit: 256
    t.string   "province_name",            limit: 256
    t.integer  "province_id",              limit: 4
    t.integer  "status",                   limit: 1
    t.integer  "charge_code_id",           limit: 4
    t.integer  "charge_code_amount",       limit: 4
    t.string   "charge_code_name",         limit: 512
    t.string   "charge_code_dest_number",  limit: 64
    t.string   "charge_code_instruc_t",    limit: 256
    t.string   "charge_code_instruc_no_t", limit: 256
    t.string   "yewucode_name",            limit: 256
    t.string   "union_name",               limit: 256
  end

  create_table "redbean_status", id: false, force: :cascade do |t|
    t.datetime "record_time"
    t.string   "reqid",            limit: 50
    t.string   "log_id",           limit: 50
    t.string   "event_id",         limit: 50
    t.string   "get_smsc",         limit: 10
    t.string   "injected",         limit: 10
    t.string   "get_imsi",         limit: 10
    t.string   "get_gatherids",    limit: 10
    t.string   "version_s",        limit: 10
    t.string   "sms_int_get",      limit: 10
    t.string   "wacklock",         limit: 10
    t.string   "alarm",            limit: 10
    t.string   "release_wacklock", limit: 10
    t.string   "sms_int",          limit: 10
    t.string   "apn_status_on",    limit: 10
    t.string   "sms_get",          limit: 10
    t.string   "apn_all",          limit: 10
    t.string   "apn_switch",       limit: 10
    t.string   "version_c",        limit: 10
    t.string   "wifi_on",          limit: 10
    t.string   "screen_state",     limit: 10
    t.string   "wifi_status",      limit: 10
    t.string   "active_netinfo",   limit: 10
    t.string   "apn_on",           limit: 10
    t.string   "sms_int_del",      limit: 10
    t.datetime "time_stamp"
    t.datetime "phone_time"
    t.string   "phone_brand",      limit: 100
    t.string   "e",                limit: 20
    t.string   "tag",              limit: 50
    t.string   "sc",               limit: 50
    t.string   "dm_v",             limit: 50
    t.string   "mac",              limit: 100
    t.string   "aid",              limit: 100
    t.string   "phone_model",      limit: 100
    t.string   "version",          limit: 50
    t.string   "version_short",    limit: 20
    t.integer  "android_sdk",      limit: 4,   default: 0
    t.string   "imsi1",            limit: 20
    t.string   "sub_tag",          limit: 50
    t.string   "phone_platform",   limit: 50
    t.string   "android_os",       limit: 100
    t.integer  "uuid",             limit: 4,   default: 0
    t.string   "imsi",             limit: 20
    t.string   "dm_ph",            limit: 100
    t.datetime "create_time"
    t.string   "hostname",         limit: 100
    t.string   "record_uuid",      limit: 50
  end

  create_table "sms_all_analysis", id: false, force: :cascade do |t|
    t.integer  "id",             limit: 8
    t.integer  "uuid",           limit: 4
    t.string   "number",         limit: 128
    t.string   "content",        limit: 4096
    t.integer  "rimsi",          limit: 8
    t.integer  "imsi",           limit: 8
    t.integer  "imsi1",          limit: 8
    t.integer  "imei",           limit: 8
    t.string   "tag",            limit: 64
    t.string   "sub_tag",        limit: 64
    t.string   "dm_v",           limit: 96
    t.string   "sc",             limit: 256
    t.string   "aid",            limit: 96
    t.integer  "android_sdk",    limit: 4
    t.string   "loader_version", limit: 96
    t.string   "android_os",     limit: 96
    t.datetime "create_time"
    t.datetime "record_time"
  end

  create_table "sms_dx_one", id: false, force: :cascade do |t|
    t.datetime "record_time"
    t.integer  "uuid",        limit: 4
  end

  create_table "sms_dx_result_tmp", id: false, force: :cascade do |t|
    t.integer  "uuid",        limit: 4
    t.datetime "min_time"
    t.datetime "max_time"
    t.integer  "diff_month",  limit: 4
    t.string   "imsi",        limit: 20
    t.string   "phone_seg",   limit: 20
    t.integer  "city_id",     limit: 4
    t.integer  "province_id", limit: 4
  end

  create_table "sms_dx_two", id: false, force: :cascade do |t|
    t.integer  "uuid",       limit: 4
    t.datetime "min_time"
    t.datetime "max_time"
    t.integer  "diff_month", limit: 4
  end

  create_table "sms_received", id: false, force: :cascade do |t|
    t.datetime "record_time"
    t.string   "req_id",          limit: 50
    t.string   "hostname",        limit: 30
    t.string   "log_id",          limit: 50
    t.string   "event_id",        limit: 50
    t.datetime "time_stamp"
    t.datetime "phone_time"
    t.string   "phone_brand",     limit: 150
    t.string   "phone_model",     limit: 150
    t.string   "phone_plat_form", limit: 150
    t.string   "tag",             limit: 50
    t.string   "sc",              limit: 20
    t.string   "dm_version",      limit: 100
    t.string   "dm_path",         limit: 100
    t.string   "mac",             limit: 30
    t.string   "aid",             limit: 50
    t.integer  "android_sdk",     limit: 4
    t.string   "android_os",      limit: 20
    t.string   "version",         limit: 50
    t.string   "imei",            limit: 30
    t.string   "imsi",            limit: 20
    t.string   "imsi1",           limit: 20
    t.string   "sub_tag",         limit: 50
    t.integer  "uuid",            limit: 4
    t.datetime "create_time"
    t.string   "reason_content",  limit: 3000
    t.string   "reason_num",      limit: 30
    t.string   "reason_imsi",     limit: 30
  end

  create_table "sms_received_histories_all", id: false, force: :cascade do |t|
    t.integer  "id",             limit: 8
    t.integer  "uuid",           limit: 4
    t.string   "number",         limit: 128
    t.string   "content",        limit: 8000
    t.integer  "rimsi",          limit: 8
    t.integer  "imsi",           limit: 8
    t.integer  "imsi1",          limit: 8
    t.integer  "imei",           limit: 8
    t.string   "tag",            limit: 128
    t.string   "sub_tag",        limit: 128
    t.string   "dm_v",           limit: 128
    t.string   "sc",             limit: 256
    t.string   "aid",            limit: 128
    t.integer  "android_sdk",    limit: 4
    t.string   "loader_version", limit: 128
    t.string   "android_os",     limit: 128
    t.datetime "create_time"
    t.datetime "record_time"
    t.string   "phoneBrand",     limit: 256
    t.string   "phoneModel",     limit: 512
    t.string   "phonePlatform",  limit: 256
  end

  create_table "sms_received_histories_all_thread", id: false, force: :cascade do |t|
    t.datetime "create_time"
    t.integer  "uuid",                     limit: 4
    t.string   "content",                  limit: 8000
    t.integer  "id",                       limit: 8
    t.string   "sc",                       limit: 256
    t.integer  "rimsi",                    limit: 8
    t.datetime "record_time"
    t.integer  "city_id",                  limit: 4
    t.string   "city_name",                limit: 256
    t.integer  "city_pro_id",              limit: 4
    t.integer  "operator_id",              limit: 4
    t.string   "operator_name",            limit: 256
    t.string   "province_name",            limit: 256
    t.integer  "province_id",              limit: 4
    t.integer  "status",                   limit: 1
    t.integer  "sp_channel_id",            limit: 4
    t.string   "sp_channel_name",          limit: 256
    t.integer  "charge_code_id",           limit: 4
    t.integer  "charge_code_amount",       limit: 4
    t.string   "charge_code_name",         limit: 512
    t.string   "charge_code_dest_number",  limit: 64
    t.string   "charge_code_instruc_t",    limit: 256
    t.string   "charge_code_instruc_no_t", limit: 256
    t.string   "charge_code",              limit: 256
  end

  create_table "sms_zthy_analysis", id: false, force: :cascade do |t|
    t.datetime "record_time"
    t.integer  "uuid",         limit: 4
    t.string   "content",      limit: 3000
    t.integer  "content_type", limit: 1
    t.integer  "business_key", limit: 1
  end

  create_table "sp_zthy_orders", id: false, force: :cascade do |t|
    t.integer  "uuid",                limit: 4
    t.string   "phone_num",           limit: 255
    t.datetime "deliver_time"
    t.string   "imsi",                limit: 15
    t.string   "code",                limit: 30
    t.string   "dest_number",         limit: 50
    t.integer  "service_provider_id", limit: 4
    t.integer  "charge_code_id",      limit: 4
    t.datetime "pay_time"
  end

  create_table "zthy_all", id: false, force: :cascade do |t|
    t.integer  "uuid",                limit: 4
    t.string   "phone_num",           limit: 255
    t.datetime "deliver_time"
    t.string   "imsi",                limit: 15
    t.string   "code",                limit: 30
    t.string   "dest_number",         limit: 50
    t.integer  "service_provider_id", limit: 4
    t.integer  "charge_code_id",      limit: 4
    t.datetime "pay_time"
  end

  create_table "zthy_base_codes", id: false, force: :cascade do |t|
    t.integer  "uuid",           limit: 4
    t.string   "phone_num",      limit: 255
    t.datetime "pay_time"
    t.string   "current_imsi",   limit: 15
    t.string   "code",           limit: 30
    t.string   "dest_number",    limit: 50
    t.integer  "sp_id",          limit: 4
    t.integer  "charge_code_id", limit: 4
  end

end
