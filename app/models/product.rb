class Product < ActiveRecord::Base
    has_many :reviews 
    has_many :users, through: :reviews

    def leave_review(the_user, stars, new_comment)
        Review.create(
            star_rating: stars,
            comment: new_comment,
            product_id: self.id,
            user_id: the_user.id
        )
    end

    def print_all_reviews
        # y =[] 
        # y << self.reviews 
        # pp y
        self.reviews.each do |review|
            user = users.find(review.user_id)
            # puts "User: #{user}"
            puts "Review for #{self.name} by #{user.name}: #{review.star_rating} stars  #{review.comment}"
        end
        
    end

    def average_rating
        self.reviews.average("star_rating")
    end
end

 