class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :setting_count, null: false
      t.string :prace, null: false
      t.text :content, null: false
      t.date :event_date, null: false
      t.date :deadline_date
      t.references :coupon, foreign_key: true
      t.references :host, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
