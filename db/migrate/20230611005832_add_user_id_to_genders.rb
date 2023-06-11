class AddUserIdToGenders < ActiveRecord::Migration[6.1]
  def change
    add_column :genders, :user_id, :integer
  end
end
