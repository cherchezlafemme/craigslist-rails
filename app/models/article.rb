class Article < ApplicationRecord
  belongs_to :category

  validates :title, :price, :body, :author_name, :author_email, presence: { message: "%{attribute} is required" }
  validates_numericality_of :price, :greater_than_or_equal_to => 0,  message: "Please, include price. If you the item is free, put 0"
  validates_associated :category
end
