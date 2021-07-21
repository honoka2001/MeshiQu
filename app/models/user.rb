# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :events, dependent: :destroy, foreign_key: :host_id
  has_many :event_users, foreign_key: :member_id
  has_many :participate_events, through: :event_users, source: :event

  has_many :coupons, dependent: :destroy
  has_many :checks, dependent: :destroy
  has_many :checkd_coupons, through: :checks, source: :coupon

  def participate?(event)
    participate_events.include?(event)
  end

  def checked?(coupon)
    checkd_coupons.include?(coupon)
  end
end
