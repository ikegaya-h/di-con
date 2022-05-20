class Api::ObjectRelationship < ApplicationRecord
  belongs_to :id, class_name: "Api::Object", foreign_key: :from_obj_id
  belongs_to :id, class_name: "Api::Object", foreign_key: :to_obj_id

end
