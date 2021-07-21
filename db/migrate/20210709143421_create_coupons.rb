# frozen_string_literal: true

class CreateCoupons < ActiveRecord::Migration[5.2]
  def change
    create_table :coupons do |t|
      t.integer :min_setting_count, null: false
      t.text :content, null: false
      t.date :exp_date
      t.references :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
