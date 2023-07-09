class CreateGenderGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :gender_genres do |t|
      t.integer :gender_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
