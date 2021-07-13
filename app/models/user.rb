class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :event_users
  has_many :participation_events, through: :event_users, source: :event
  has_many :events, dependent: :destroy, foreign_key: :host_id
end
