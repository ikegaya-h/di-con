class CreateApiVersions < ActiveRecord::Migration[6.1]
  def change
    create_table :api_versions do |t|
      t.string :ver_name, null: false

      t.timestamps null: false
    end
  end
end
