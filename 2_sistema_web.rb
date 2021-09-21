## schema.rb

ActiveRecord::Schema.define(version: 2020_02_24_182511) do
  
    create_table "users", force: :cascade do |t|
      t.string "user_name"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end

    create_table "evento", force: :cascade do |t|
        t.string "premio_1"
        t.string "premio_2"
        t.string "premio_3"
        t.datetime "created_at", null: false
        t.datetime "updated_at", null: false
    end

end

## models > user.rb

class User < ApplicationRecord
    has_and_belongs_to_many :eventos
end

## models > evento.rb

class Evento < ApplicationRecord
    has_and_belongs_to_many :users
end