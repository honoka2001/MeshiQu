# frozen_string_literal: true

class Coupon < ApplicationRecord
  belongs_to :restaurant
  has_many :events

  has_many :checks
  has_many :checkd_users, through: :checks, source: :user
end
