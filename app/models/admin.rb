class Admin < ApplicationRecord
  has_many :post, dependent: :destroy
  has_many :comment, through: :post, dependent: :destroy
  
  validates :name, presence: true
  
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

end
