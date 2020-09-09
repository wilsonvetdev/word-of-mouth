class College < ApplicationRecord
    has_many :workplaces
    has_many :professors, through: :workplaces

    def self.search(search_param)
        if search_param 
            where(["name LIKE ? OR city LIKE ? OR state LIKE ?", "%#{search_param}%", "%#{search_param}%", "%#{search_param}%"]) 
            # https://api.rubyonrails.org/classes/ActiveRecord/FinderMethods.html
        else 
            College.all
        end
    end

end
