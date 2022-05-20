class Api::Info < ApplicationRecord
  belongs_to: :object, :property, :layer
end
