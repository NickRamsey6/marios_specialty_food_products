require 'rails_helper'

describe Product do
  it {should have_many(:reviews) }

  it { should validate_presence_of :name }
  it { should validate_presence_of :price }
  it { should validate_presence_of :origin }

  it("titleizes the name of a product") do
    product = Product.create({name: "skyline chili", price: 5, origin: "USA"})
    expect(product.name()).to(eq("Skyline Chili"))
  end
end
