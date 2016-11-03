class Offer < ApplicationRecord
  belongs_to :user
  belongs_to :doubt
  has_one :doubt, :foreign_key => :offer_id

  # It's just accepted one offer by user
  validates_uniqueness_of :doubt_id, scope: :user_id

  def can_crud user_id
  	user_id == self.user_id
  end

end