require 'rails_helper'

describe Review do
  #correct relationship spec
  it {should belong_to(:product) }
  #all Product fields filled in specs
  it { should validate_presence_of :author }
  it { should validate_presence_of :content_body }
  it { should validate_presence_of :rating }
  #validation of rating spec
  it { should validate_inclusion_of(:rating).in_range(0..5) }
  #validation of content length spec
  it { should validate_length_of(:content_body).is_at_most(250) }
  it { should validate_length_of(:content_body).is_at_least(50) }
end
