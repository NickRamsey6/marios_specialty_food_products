require 'rails_helper'

describe "the add a product process" do
  it "adds a new product" do
    visit products_path
    click_link 'Add a product'
    fill_in 'Name', :with => 'Skyline Chili'
    fill_in 'Price', :with => 10
    fill_in 'Origin', :with => 'USA'
    click_on 'Create Product'
    expect(page).to have_content 'Product successfully created!'
    expect(page).to have_content 'Skyline Chili'
  end

  # it "gives an error when no name is entered" do
  #   visit new_product_path
  #   click_on 'Create Album'
  #   expect(page).to have_content "Name can't be blank"
  # end
end
