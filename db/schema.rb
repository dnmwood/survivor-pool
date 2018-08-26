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

ActiveRecord::Schema.define(version: 20180825225501) do

  create_table "owners", force: :cascade do |t|
    t.string "name"
    t.integer "total_points"
    t.integer "hidden_idols"
    t.integer "successful_immunities"
    t.integer "individual_immunities"
    t.integer "tribal_immunities"
    t.integer "rewards"
    t.integer "days"
    t.integer "jury_members"
    t.integer "winners"
    t.integer "second_placers"
    t.integer "third_placers"
    t.integer "quitters"
    t.integer "med_evacs"
    t.integer "season_favourites"
    t.integer "season_victories"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_url"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "points"
    t.integer "hidden_immunities"
    t.integer "individual_immunities"
    t.integer "tribal_immunities"
    t.boolean "jury_member"
    t.boolean "winner"
    t.boolean "second_place"
    t.boolean "third_place"
    t.integer "days"
    t.integer "hidden_immunity_successes"
    t.boolean "quitter"
    t.boolean "medical_evac"
    t.boolean "season_favourite"
    t.integer "rewards"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end