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
	
  end

end