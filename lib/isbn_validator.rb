class IsbnValidator
	
	attr_reader :isbn

	

	def initialize(*isbn)
		
		if isbn.size > 0
			@isbn = ""	
			 if( isbn.at(0) != nil)
			 	@isbn = isbn.at(0)
			end
		end
	end

	

	def isbn
		return @isbn
	end
	
	def cleanup_isbn(isbn)
		return isbn.delete" "
	end

	def valid?
		if ((@isbn.size == 10 || @isbn.size == 13) && @isbn =~ /[0-9]|x/)
			return true
		end
		return false
	end
	

end
