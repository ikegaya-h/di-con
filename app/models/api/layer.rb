class Api::Layer < ApplicationRecord
  belongs_to: :versions
  has_many: :infos
end
