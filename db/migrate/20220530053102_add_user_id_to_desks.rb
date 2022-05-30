class AddUserIdToDesks < ActiveRecord::Migration[6.1]
  def change
    add_reference :api_desks, :user, foreign_key: true
  end
end
