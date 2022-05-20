class Api::Object < ApplicationRecord
  has_one :from_objects,
          class_name: "Api::ObjectRelationship",
          foreign_key: "from_obj_id"
  has_many :to_objects,
          class_name: "Api::ObjectRelationship",
          foreign_key: "from_obj_id"

  has_many :infos
end
