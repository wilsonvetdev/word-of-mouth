class Review < ApplicationRecord
  belongs_to :professor
  belongs_to :user

  validates :rating, presence: true, numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 5 }
  validates :content, presence: true, length: { maximum: 500 }
  validates :professor_id, presence: true, uniqueness: { scope: :user_id, message: "You have a review for this professor already!" } 
  validates :user_id, presence: true

end
