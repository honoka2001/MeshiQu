class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, dependent: :destroy, foreign_key: :host_id
  has_many :event_users, foreign_key: :member_id
  has_many :participates, through: :event_users, source: :event

  def participate?(event)
    participates.include?(event)
  end

end
