class Review < ApplicationRecord
  belongs_to :product
  validates :author, presence: true
  validates :content_body, presence: true
  validates :rating, presence: true
  validates_length_of :content_body, maximum: 250
  validates_length_of :content_body, minimum: 50
  # validates_inclusion_of :rating, :in => 0..5
end
