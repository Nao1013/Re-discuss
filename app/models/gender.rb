class Gender < ApplicationRecord
  
  # userとのアソシエーション
  belongs_to :user
  
  has_many :gender_genres
  has_many :genres, through: :gender_genres
end
