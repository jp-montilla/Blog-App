class Admin < ApplicationRecord
  validates :name, presence: true
  
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

end
