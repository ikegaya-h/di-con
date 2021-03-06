class CreateApiLayers < ActiveRecord::Migration[6.1]
  def change
    create_table :api_layers do |t|
      t.references :api_versions, null: false, foreign_key: true
      t.string :layer_name, null: false

      t.timestamps null: false
    end
  end
end
