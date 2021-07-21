# frozen_string_literal: true

class Check < ApplicationRecord
  belongs_to :coupon
  belongs_to :user

  validates_uniqueness_of :coupon_id, scope: :user_id
end
