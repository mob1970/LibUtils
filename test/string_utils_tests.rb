require 'test/unit'
require '../lib/string_utils.rb'


class StringUtilsTests < Test::Unit::TestCase
  
  ###	
  #
  ###  
  def test_starts_with
	assert_equal true, LibUtils::StringUtils.starts_with?('Hola', 'Ho')
	assert_equal false, LibUtils::StringUtils.starts_with?('Hola', 'la')
	assert_equal false, LibUtils::StringUtils.starts_with?(nil, 'la')
	assert_equal true, LibUtils::StringUtils.starts_with?('', '')
	assert_equal false, LibUtils::StringUtils.starts_with?('', 'la')
  end

  ###	
  #
  ###  
  def test_ends_with
	assert_equal true, LibUtils::StringUtils.ends_with?('Hola', 'la')
	assert_equal false, LibUtils::StringUtils.ends_with?('Hola', 'Ho')
	assert_equal false, LibUtils::StringUtils.ends_with?(nil, 'Ho')
	assert_equal true, LibUtils::StringUtils.ends_with?('', '')
	assert_equal false, LibUtils::StringUtils.ends_with?('', 'la')
  end  

  ###	
  #
  ###  
  def test_substr
	assert_equal 'l', LibUtils::StringUtils.substring('Hola', 2)	
	assert_equal 'la', LibUtils::StringUtils.substring('Hola', 2, 2)
  end

  ###	
  #
  ###  
  def test_default_string
	assert_equal 'Hola', LibUtils::StringUtils.default_string('Hola', 'Hola 2')	
	assert_equal 'Hola 2', LibUtils::StringUtils.default_string(nil, 'Hola 2')
	assert_equal '', LibUtils::StringUtils.default_string(nil, '')
	assert_equal nil, LibUtils::StringUtils.default_string(nil, nil)
  end  
  
  ###	
  #
  ###  
  def test_strip
	assert_equal nil, LibUtils::StringUtils.strip(nil)	
	assert_equal 'Hola', LibUtils::StringUtils.strip('Hola')
	assert_equal 'Hola', LibUtils::StringUtils.strip('Hola         ')
	assert_equal 'Hola', LibUtils::StringUtils.strip('         Hola')
	assert_equal 'Hola', LibUtils::StringUtils.strip('         Hola         ')
  end  

  ###	
  #
  ###  
  def test_index_of
	assert_equal -1, LibUtils::StringUtils.index_of(nil, 'p')	
	assert_equal -1, LibUtils::StringUtils.index_of('mike', 'p')
	assert_equal 4, LibUtils::StringUtils.index_of('Joseph', 'p')
  end
  
  ###	
  #
  ###  
  def test_last_index_of
	assert_equal -1, LibUtils::StringUtils.last_index_of(nil, 'p')	
	assert_equal -1, LibUtils::StringUtils.last_index_of('mike', 'p')
	assert_equal 4, LibUtils::StringUtils.last_index_of('Joseph', 'p')
	assert_equal 8, LibUtils::StringUtils.last_index_of('Josephine', 'e')
  end
  
  ###	
  #
  ###  
  def test_contains?
	assert_equal false, LibUtils::StringUtils.contains?(nil, 'p')	
	assert_equal false, LibUtils::StringUtils.contains?('mike', 'p')
	assert_equal true, LibUtils::StringUtils.contains?('Joseph', 'p')
	assert_equal true, LibUtils::StringUtils.contains?('Josephine', 'e')
  end
  
  ###
  #
  ###
  def test_convert_java_name_to_ruby_name
	assert_equal nil, LibUtils::StringUtils.convert_java_name_to_ruby_name(nil)	
	assert_equal '', LibUtils::StringUtils.convert_java_name_to_ruby_name('')
	assert_equal 'valid?', LibUtils::StringUtils.convert_java_name_to_ruby_name('isValid')
	assert_equal 'name_parameter', LibUtils::StringUtils.convert_java_name_to_ruby_name('getNameParameter')
	assert_equal 'name_parameter', LibUtils::StringUtils.convert_java_name_to_ruby_name('setNameParameter')
  end

  ###
  #
  ###
  def test_left_pad
	assert_equal nil, LibUtils::StringUtils.left_pad(nil, 10)	
	assert_equal nil, LibUtils::StringUtils.left_pad(nil, 10, ' ')
	assert_equal '        nn', LibUtils::StringUtils.left_pad('nn', 10)
	assert_equal '        nn', LibUtils::StringUtils.left_pad('nn', 10, ' ')
	assert_equal '--------nn', LibUtils::StringUtils.left_pad('nn', 10, '-')
  end  

  ###
  #
  ###
  def test_right_pad
	assert_equal nil, LibUtils::StringUtils.right_pad(nil, 10)	
	assert_equal nil, LibUtils::StringUtils.right_pad(nil, 10, ' ')
	assert_equal 'nn        ', LibUtils::StringUtils.right_pad('nn', 10)
	assert_equal 'nn        ', LibUtils::StringUtils.right_pad('nn', 10, ' ')
	assert_equal 'nn--------', LibUtils::StringUtils.right_pad('nn', 10, '-')
  end   

  ###
  #
  ###
  def test_center
	assert_equal nil, LibUtils::StringUtils.center(nil, 10)	
	assert_equal nil, LibUtils::StringUtils.center(nil, 10, ' ')
	assert_equal '    nn    ', LibUtils::StringUtils.center('nn', 10)
	assert_equal '    nn    ', LibUtils::StringUtils.center('nn', 10, ' ')
	assert_equal '----nn----', LibUtils::StringUtils.center('nn', 10, '-')
  end   
  
end