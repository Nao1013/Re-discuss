class Genre < ApplicationRecord
  has_many :gender_genres
  has_many :genders, through: :gender_genres
end
