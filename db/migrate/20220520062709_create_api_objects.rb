class CreateApiObjects < ActiveRecord::Migration[6.1]
  def change
    create_table :api_objects do |t|
      t.string :name, null: false
      t.string :x
      t.string :y

      t.timestamps null: false
    end
  end
end
