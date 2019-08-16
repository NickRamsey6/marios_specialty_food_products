class LandingPageController < ApplicationController
  def index
    @three_most_recent = Product.three_most_recent
    @made_in_the_usa = Product.made_in_the_usa
    @most_reviews = Product.most_reviews
    render :index
  end
end
