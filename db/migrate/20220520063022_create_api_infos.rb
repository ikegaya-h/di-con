class CreateApiInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :api_infos do |t|
      t.references :object, null: false, foreign_key: true
      t.references :info, null: false, foreign_key: true
      t.string :value, null: false
      t.references :layer, null: false, foreign_key: true

      t.timestamps null: false
    end
  end
end
