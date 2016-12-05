class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :doubt
  has_one :selected_doubt, :class_name => 'Doubt', :foreign_key => 'selected_offer_id'
  # It's just accepted one offer by user
  validates_uniqueness_of :doubt_id, scope: :user_id

  def can_crud user_id
  	user_id == self.user_id
  end

  def was_selected
  	doubt.selected_offer.present? && doubt.selected_offer_id == id
  end

end