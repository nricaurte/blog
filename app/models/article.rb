class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments
  enum state: {
                active: 1,
                archived: 2
  }
  validates :title, :content, :category, :state, presence: true
end
