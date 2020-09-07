class Professor < ApplicationRecord
    has_many :workplaces
    has_many :reviews
    has_many :colleges, through: :workplaces
    accepts_nested_attributes_for :workplaces
    
    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :department, presence: true

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
end
