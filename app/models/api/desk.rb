class Api::Desk < ApplicationRecord
  has_many: :versions, dependent: :destroy
  belongs_to: :user
end
