# frozen_string_literal: true

class CreateChecks < ActiveRecord::Migration[5.2]
  def change
    create_table :checks do |t|
      t.references :coupon, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
