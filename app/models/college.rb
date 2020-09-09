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

    def amount_of_reviews
        professors = self.professors
        professors.map { |professor| professor.reviews.count }.sum
        # get all the reviews of each professor and count them, then sum all of the reviews up.
        # output example: [1, 5, 6, 4], then sum would be 16.
    end

    def all_reviews_total_num
        review_ratings = self.professors.map { |professor| professor.reviews.pluck(:rating) }
        # output example: [[1], [2, 3], [2, 3], [3, 5], [4]]
        review_ratings.flatten.sum
        # flatten the array to take away the nested arrays
    end

    def review_average
        (self.all_reviews_total_num / self.amount_of_reviews.to_f).round(2)
    end

    def self.most_popular_by_professor_count
        result = College.all.reject { |college| college.professors.count == 0}
        result.sort_by {|college| college.professors.count }.reverse[0..2]
        # sort colleges based on professor count, reverse the array order and grab the first three element.
    end

end
