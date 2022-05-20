class Api::Layer < ApplicationRecord
  belongs_to: :versions
  has_many: :infos, dependent: :destroy
end
