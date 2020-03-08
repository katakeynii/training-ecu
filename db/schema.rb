# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_08_182751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "choixes", force: :cascade do |t|
    t.integer "quantite"
    t.integer "total"
    t.bigint "glace_id", null: false
    t.bigint "commande_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["commande_id"], name: "index_choixes_on_commande_id"
    t.index ["glace_id"], name: "index_choixes_on_glace_id"
  end

  create_table "choixes_parfums", id: false, force: :cascade do |t|
    t.bigint "choix_id", null: false
    t.bigint "parfum_id", null: false
  end

  create_table "chooixes_parfums", id: false, force: :cascade do |t|
    t.bigint "chooix_id", null: false
    t.bigint "parfum_id", null: false
  end

  create_table "clients", force: :cascade do |t|
    t.string "nom"
    t.string "prenom"
    t.string "adresse"
    t.string "numero_telephone"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "commandes", force: :cascade do |t|
    t.integer "total"
    t.datetime "date_commande"
    t.datetime "date_livraison"
    t.boolean "etat_livraison"
    t.string "code"
    t.bigint "client_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "nom_livreur"
    t.index ["client_id"], name: "index_commandes_on_client_id"
  end

  create_table "customers", id: :serial, force: :cascade do |t|
    t.string "nom", limit: 255
    t.string "prenom", limit: 255
    t.string "adresse", limit: 255
    t.string "numero_telephone", limit: 255
    t.integer "age"
    t.string "email", limit: 255
    t.datetime "created_at"
    t.datetime "deleted_at"
  end

  create_table "glaces", force: :cascade do |t|
    t.string "name"
    t.integer "prix"
    t.text "description"
    t.integer "nb_boule"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parfums", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "choixes", "commandes"
  add_foreign_key "choixes", "glaces"
  add_foreign_key "commandes", "clients"
end
