class Event < ApplicationRecord
    belongs_to :host, class_name: 'User', foreign_key: :host_id
    belongs_to :coupon

    has_many :event_users, dependent: :destroy
    has_many :participate_users, through: :event_users, source: :member
end
