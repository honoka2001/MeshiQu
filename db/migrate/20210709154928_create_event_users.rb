# frozen_string_literal: true

class CreateEventUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :event_users do |t|
      t.references :event, foreign_key: true
      t.references :member, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
