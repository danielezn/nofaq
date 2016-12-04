class Doubt < ApplicationRecord

  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user
  has_many :offers
  has_one :answer

  enum privacy: [ :public_status, :private_status ]
  enum status: [ :waiting_for_offers, :offer_selected ]

  def can_offer user_id
  	 !(has_offers_for_owner user_id) && (offers.where(user_id: user_id).empty?)
  end

  def has_offers_for_owner user_id
  	user_id == self.user_id
  end

  def selected_offer
    self.offers.find_by_id(self.selected_offer_id)
  end

  def set_selected_offer(offer_id)
    self.selected_offer_id = offer_id
    self.offer_selected!
  end

end