class Api::Version < ApplicationRecord
  belongs_to: :desk
  has_many: :layers, dependent: :destroy
end
