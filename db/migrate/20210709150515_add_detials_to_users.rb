# frozen_string_literal: true

class AddDetialsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :school, :string
    add_column :users, :grade, :integer
    add_column :users, :department, :string
    add_column :users, :gender, :integer
  end
end
