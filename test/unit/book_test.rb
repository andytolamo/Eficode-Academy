require 'test_helper'

class BookTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
	test "a book with all attributes should be valid" do
		book  = books(:Steppenwolfe)
		book2 =  books(:two)
		book.authors = ''
		assert book.valid?
	end
end
