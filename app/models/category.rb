class Category < ApplicationRecord
  has_many :articles
  belongs_to :creator, class_name: :User

  validates_presence_of :name
end
