class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :doubt
  belongs_to :offer
end
