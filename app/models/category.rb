class Category < ApplicationRecord
  validates :category, presence: true
  has_many :articles, dependent: :destroy
end
