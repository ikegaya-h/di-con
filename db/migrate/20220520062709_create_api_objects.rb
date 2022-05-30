class CreateApiObjects < ActiveRecord::Migration[6.1]
  def change
    create_table :api_objects do |t|
      t.string :obj_name, null: false
      t.string :obj_x
      t.string :obj_y

      t.timestamps null: false
    end
  end
end
