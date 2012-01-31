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

	protected
		def valid_character(char)
			puts "<-->#{char}"
			if char.match('[0-9]{1}')
				return true
		return false
		end
	end
	public
		def valid?
		 	isbn =  @isbn
			puts isbn
			isbn.each_char {|c| self.valid_character(c)}
			
		end
		
	end


