class ReviewsController < ApplicationController

    def create
    @review = Review.create(
        rating: params[:review][:rating],
        description: params[:review][:description],
        product_id: params[:product_id],
        user: current_user

    )

    redirect_to "/products/#{params[:product_id]}"
    end
end
