class CreateApiObjectRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :api_object_relationships do |t|
      t.string :relationship, null: false
      t.references :from_obj_id, null: false, foreign_key: { to_table: :objects }
      t.references :to_obj_id, null: false, foreign_key: { to_table: :objects }

      t.timestamps null: false
    end
  end
end
