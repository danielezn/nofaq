class Doubt < ApplicationRecord

  extend FriendlyId
  friendly_id :title, use: :slugged
  belongs_to :user
  has_many :offers, :class_name => "offer"
  enum privacy: [ :public_status, :private_status ]

  def can_offer user_id
  	 !(has_offers_for_owner user_id) && (offers.where(user_id: user_id).empty?)
  end

  def has_offers_for_owner user_id
  	user_id == self.user_id
  end

end