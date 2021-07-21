# frozen_string_literal: true

class AddColumnToRestaurants < ActiveRecord::Migration[5.2]
  def change
    add_column :restaurants, :name, :string, null: false
    add_column :restaurants, :address, :string, null: false
  end
end
