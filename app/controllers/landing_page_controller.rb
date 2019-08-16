class LandingPageController < ApplicationController
  def index
    @three_most_recent = Product.three_most_recent
    @made_in_the_usa = Product.made_in_the_usa
    render :index
  end
end
