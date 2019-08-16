class LandingPageController < ApplicationController
  def index
    @three_most_recent = Product.three_most_recent
    render :index
  end
end
