class User < ActiveRecord::Base
    has_many :reviews
    has_many :products, through: :reviews

    def favorite_product
        self.reviews.order("star_rating DESC").limit(1)
    end

    def remove_reviews(prod)
        self.reviews.where(product_id: prod.id).delete_all
    end
end