class Api::Desk < ApplicationRecord
  has_many: :versions, dependent: :destroy
end
