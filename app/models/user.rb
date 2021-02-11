class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :lockable, :timeoutable, :trackable
  has_many :articles
  has_one_attached :avatar
  validates :first_name, :last_name, :avatar, presence: true
  def name
    email
  end
end
