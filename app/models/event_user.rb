class EventUser < ApplicationRecord
    belongs_to :member, class_name: 'User', foreign_key: :member_id
    belongs_to :event

    validates :member_id, uniqueness: { scope: :event_id}
end
