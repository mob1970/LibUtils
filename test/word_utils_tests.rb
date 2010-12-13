require 'test/unit'
require '../lib/word_utils.rb'


class WordUtilsTest < Test::Unit::TestCase

  ###	
  #
  ###  
  def test_initials
	assert_equal nil, LibUtils::WordUtils.initials(nil)
	assert_equal '', LibUtils::WordUtils.initials('')
	assert_equal 'hqt', LibUtils::WordUtils.initials('hola que tal?')
	assert_equal 'HQT', LibUtils::WordUtils.initials('Hola Que Tal?')	                                                  
  end  
  
  ###	
  #
  ###  
  def test_capitalize
	assert_equal nil, LibUtils::WordUtils.capitalize(nil)
	assert_equal '', LibUtils::WordUtils.capitalize('')
	assert_equal 'Hola Que Tal?', LibUtils::WordUtils.capitalize('hola que tal?')
	assert_equal 'Hola Que Tal?', LibUtils::WordUtils.capitalize('HOLA QUE TAL?')
  end

end