class Store < ActiveRecord::Base
  has_many :employees
  validates :annual_revenue, presence: true, numericality: { greater_than_or_equal_to: 0, only_integer: true} 
  # validates :womens_apparel, presence: true 
  # validates :mens_apparel, presence: true 
  validates :name, presence: true, length: { minimum: 3 }
end
