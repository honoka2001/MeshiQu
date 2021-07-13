class Event < ApplicationRecord
    belongs_to :host, class_name: 'User', foreign_key: :host_id
    belongs_to :coupon
    has_many :event_users
    has_many :users, through: :event_users
end
