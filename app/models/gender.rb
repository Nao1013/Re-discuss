class Gender < ApplicationRecord
  
  # userとのアソシエーション
  belongs_to :user
  
end
