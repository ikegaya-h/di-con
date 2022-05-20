class CreateApiProperties < ActiveRecord::Migration[6.1]
  def change
    create_table :api_properties do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
