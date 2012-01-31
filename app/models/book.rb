class Book < ActiveRecord::Base
		validates :authors, presence: true
		validates :title, uniqueness: true
end
