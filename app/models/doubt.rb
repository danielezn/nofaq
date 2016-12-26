class Doubt < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :user
  has_many :offers
  belongs_to :selected_offer, :class_name => 'Offer'
  has_one :answer

  enum privacy: [ :public_status, :private_status ]
  enum status: [ :waiting_for_offers, :offer_selected, :answer_ready]

  searchkick

  def can_offer user_id
  	 !(has_offers_for_owner user_id) && (offers.where(user_id: user_id).empty?)
  end

  def has_offers_for_owner user_id
  	user_id == self.user_id
  end

  def set_selected_offer(offer_id)
    self.selected_offer_id = offer_id
    self.offer_selected!
  end

  def search_doubts params
    #For future searchkick
  end

  def search_data
    {
      title: title,
      description: description
    }
  end

end