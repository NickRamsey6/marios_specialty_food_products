class Product < ApplicationRecord
  has_many :reviews, dependent: :destroy
  scope :three_most_recent, -> { order(created_at: :desc).limit(3)}
  scope :made_in_the_usa, -> { where(origin: "USA") }
  validates :name, presence: true
  validates :price, presence: true
  validates :origin, presence: true
  before_save(:titleize_product)

  private
    def titleize_product
      self.name = self.name.titleize
    end
end
