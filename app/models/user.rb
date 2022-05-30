class User < ApplicationRecord
  include JwtToken
  authenticates_with_sorcery!
  has_many :desks, dependent: :destroy
end
