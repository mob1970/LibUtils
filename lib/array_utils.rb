module LibUtils

  module ArrayUtils

	###
	#
	###
	def self.first(array)
	  return (array) ? array.first : nil
	end	
	
	###
	#
	###
	def self.last(array)
	  return (array) ? array.last : nil
	end	


	###
	#
	###
	def self.from(array, from_index)
	  return (array) ? ((from_index < array.length()) ? array[from_index, array.length()] : []) : nil
	end

	###
	#
	###
	def self.to(array, to_index)
	  return (array) ? ((to_index < array.length()) ? array[0, to_index+1] : []) : nil
	end
	
	###
	#
	###
	def self.clone(array)
	  return (array) ? Array.new(array): array
	end	

	###
	#
	###
	def self.contains?(array, value)
	  return (array) ? array.index(value) != nil : false
	end	
	
	###
	#
	###
	def self.empty?(array)
	  return (array) ? array.empty? : true
	end
	
	###
	#
	###
	def self.add_all(array, other_array)
	  return (array) ? array.concat((other_array) ? other_array : []) : other_array
	end

	###
	#
	###
	def self.same_length?(array, other_array)
	  return (!array && !other_array) || (array.length() == other_array.length())
	end

	###
	#
	###
	def self.nil_to_empty(array)
	  return (array) ? array : []
	end

	###
	#
	###
	def self.reverse(array)
	  return (array) ? array.reverse() : nil
	end	
	
  end

end