# frozen_string_literal: true

class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|
      t.references :to_user, null: false, foregin_key: { to_table: :users }
      t.references :from_user, null: false, foregin_key: { to_table: :users }
      t.integer :status, null: false

      t.timestamps
    end
  end
end