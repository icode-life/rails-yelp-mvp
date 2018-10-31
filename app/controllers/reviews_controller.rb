class ReviewsController < ApplicationController
  before_Action :find_review, only: [:show, :destroy]

  def show
  end

  def new
    @review.new
  end

  def create
    @review.new(review_params)
    @review.save
  end

  def destroy
  end

  private

  def find_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
