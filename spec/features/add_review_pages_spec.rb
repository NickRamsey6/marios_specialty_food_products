require 'rails_helper'

describe "the add a review process" do
  it "adds a new review" do
    visit products_path
    click_link 'Add a product'
    fill_in 'Name', :with => 'Popeyes Shrimp'
    fill_in 'Price', :with => 5
    fill_in 'Origin', :with => 'USA'
    click_on 'Create Product'
    click_link 'Popeyes Shrimp'
    click_link 'Add a review'
    fill_in 'Author', :with => 'ReviewBrah'
    fill_in 'Content body', :with => 'I am going to give it a 4.8 out of 10. My disapointment is immearsurable and my day is ruined. Sad to see Popeyes stoop so low.'
    fill_in 'Rating', :with => 2
    click_on 'Create Review'
    expect(page).to have_content "Review successfully added!"
    expect(page).to have_content 'ReviewBrah'
  end

  # it "gives an error when no name is entered" do
  #   visit new_review_path
  #   click_on 'Create Product'
  #   expect(page).to have_content "Please fill out all fields"
  # end
end
