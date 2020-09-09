class Professor < ApplicationRecord
    has_many :workplaces
    has_many :reviews
    has_many :colleges, through: :workplaces
    
    validates :first_name, presence: true
    validates :last_name, presence: true

    def self.search(search_param)
        if search_param 
            @professors = where(["last_name LIKE ? OR first_name LIKE ?", "%#{search_param}%", "%#{search_param}%"]) 
        else 
            @professors = Professor.all
        end
    end

    def full_name 
        "#{self.first_name} #{self.last_name}"
    end

    def get_review_avg
        total_reviews = self.reviews.count
        ratings_sum = self.reviews.pluck(:rating).sum
        (ratings_sum / total_reviews.to_f).round(2)
    end

end
