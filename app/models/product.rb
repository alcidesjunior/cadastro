class Product < ActiveRecord::Base
	validates :produto, presence: true,:uniqueness => true
	validates :valor , presence: true
end
