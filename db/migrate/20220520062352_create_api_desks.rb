class CreateApiDesks < ActiveRecord::Migration[6.1]
  def change
    create_table :api_desks do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
