class CreateApiInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :api_infos do |t|
      t.references :api_objects, null: false, foreign_key: true
      t.references :api_infos, null: false, foreign_key: true
      t.string :value, null: false
      t.references :api_layers, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
