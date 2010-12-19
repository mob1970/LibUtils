module LibUtils

  module WordUtils

	###
	#
	###
	def self.initials(str)
	  
	  return nil if (!str)
	  
	  val = ''
	  str.split(' ').each do |word|
		val += word[0, 1]
	  end
	  
	  return val
	end	

	###
	#
	###
	def self.capitalize(str)
	  
	  return nil if (!str)
	  
	  val = ''
	  str.split(' ').each do |word|
		val += word.capitalize() + ' '
	  end
	  
	  return val.strip()
	end		
	
	###
	#
	###
	def self.swap_case(str)
	  return str if (!str || str.strip().empty?())
	  
	  val = ''
	  str.each_char do |char|
		val += (char == char.downcase()) ? char.upcase : char.downcase
	  end
	  
	  return val
	end
	
  end

end