class CreateApiObjectRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :api_object_relationships do |t|
      t.string :relationship, null: false
      t.references :from_obj, null: false, foreign_key: { to_table: :api_objects }
      t.references :to_obj, null: false, foreign_key: { to_table: :api_objects }

      t.timestamps null: false
    end
  end
end
