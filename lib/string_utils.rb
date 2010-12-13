module LibUtils

  module StringUtils

	###
	#
	###
	def self.starts_with?(str, characters)
	  return str && str.match(/^#{characters}/) ? true : false
	end

	###
	#
	###
	def self.ends_with?(str, characters)
	  return str && str.match(/.*#{characters}$/) ? true : false
	end  

	###
	#
	###
	def self.substring(str, init_index, positions = 1)
	  return str[init_index, positions]
	end

	###
	#
	###
	def self.default_string(str, default)
	  return (str && str.strip.length != 0) ? str : default
	end

	###	
	#
	###
	def self.strip(str)
	  return (str) ? str.strip() : nil
	end

	###	
	#
	###
	def self.trim(str)
	  return strip(str)
	end	
	
	###	
	#
	###
	def self.index_of(str, str_to_find)
	  first_pos = str && !str.empty?() ? str.index(str_to_find) : -1
	  return (first_pos) ? first_pos : -1
	end
	  
	  
	###	
	#
	###
	def self.last_index_of(str, str_to_find)
	  last_pos = str && !str.empty?() ? str.rindex(str_to_find) : -1
	  return (last_pos) ? last_pos : -1
	end
	
	###	
	#
	###
	def self.contains?(str, str_to_contain)
	  return str && !str.empty?() ? index_of(str, str_to_contain) != -1 : false
	end	
	
	###
	#
	###
	def self.convert_java_name_to_ruby_name(str)
	  return str if (!str || str.empty?())
	  
	  final_str = ''
	  
	  # replacing uppercase letters by lowercase letters followed by a '_'	  
	  str.each_char() do |char|
		final_str += (char != char.downcase()) ? '_' + char.downcase() : char
	  end
  
	  # removing is prefix replacing it by an ending ?.
	  if (starts_with?(final_str, 'is'))
		final_str = substring(final_str, 3, str.length()) + '?'
	  end
	  
	  # removing set/get prefix .
	  if (starts_with?(final_str, 'get') || starts_with?(final_str, 'set'))
		final_str = substring(final_str, 4, final_str.length())
	  end
	  
	  return final_str
	  
	end	

	###
	#
	###
=begin	
	def self.convert_ruby_name_to_java_name(str)
	  return str if (!str || str.empty?())
	  
	  # replacing letters preceeded by '_' by the same uppercased.
	  idx=0
	  while (idx<str.length() do
		upcase_next = (str[idx, 1] == '_') ?  true : false
	    idx += 1
	  end	  
	  
	  if (ends_with?(str, '?'))
		str = 'is' + substring(str, 0, str.length()-1) 
	  end	  
	end	
=end	
	
	###
	#
	###
	def self.left_pad(str, length, pad_str = ' ')
	  return (str) ? str.rjust(length, pad_str) : str
	end
	
	###
	#
	###
	def self.right_pad(str, length, pad_str = ' ')
	  return (str) ? str.ljust(length, pad_str) : str
	end
	
	###
	#
	###
	def self.center(str, length, pad_str = ' ')
	  return (str) ? str.center(length, pad_str) : str
	end
	
  end

end