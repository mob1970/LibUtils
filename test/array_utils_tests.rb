require 'test/unit'
require '../lib/array_utils.rb'


class ArrayUtilsTest < Test::Unit::TestCase

  ###	
  #
  ###  
  def test_first
	assert_equal nil, LibUtils::ArrayUtils.first(nil)
	assert_equal nil, LibUtils::ArrayUtils.first([])
	assert_equal 0, LibUtils::ArrayUtils.first([0, 1, 2, 3])
  end

  ###	
  #
  ###  
  def test_last
	assert_equal nil, LibUtils::ArrayUtils.last(nil)
	assert_equal nil, LibUtils::ArrayUtils.last([])
	assert_equal 3, LibUtils::ArrayUtils.last([0, 1, 2, 3])
  end  
  
  ###	
  #
  ###  
  def test_from
	assert_equal nil, LibUtils::ArrayUtils.from(nil, 1)
	assert_equal [], LibUtils::ArrayUtils.from([], 1)
	assert_equal [0, 1, 2, 3], LibUtils::ArrayUtils.from([0, 1, 2, 3], 0)
	assert_equal [2, 3], LibUtils::ArrayUtils.from([0, 1, 2, 3], 2)
  end

  ###	
  #
  ###  
  def test_to
	assert_equal nil, LibUtils::ArrayUtils.to(nil, 1)
	assert_equal [], LibUtils::ArrayUtils.to([], 1)
	assert_equal [0], LibUtils::ArrayUtils.to([0, 1, 2, 3], 0)
	assert_equal [0, 1, 2], LibUtils::ArrayUtils.to([0, 1, 2, 3], 2)
  end  
  
  ###	
  #
  ###  
  def test_clone
	assert_equal nil, LibUtils::ArrayUtils.clone(nil)
	assert_equal [], LibUtils::ArrayUtils.clone([])
	assert_equal ['a'], LibUtils::ArrayUtils.clone(['a'])
  end  
  
  ###	
  #
  ###  
  def test_empty?
	assert_equal true, LibUtils::ArrayUtils.empty?(nil)
	assert_equal true, LibUtils::ArrayUtils.empty?([])
	assert_equal false, LibUtils::ArrayUtils.empty?(['a'])
  end
  
  ###	
  #
  ###  
  def test_add_all
	assert_equal nil, LibUtils::ArrayUtils.add_all(nil, nil)
	assert_equal [], LibUtils::ArrayUtils.add_all(nil, [])
	assert_equal ['a'], LibUtils::ArrayUtils.add_all(nil, ['a'])
	assert_equal ['a'], LibUtils::ArrayUtils.add_all(['a'], [])
	assert_equal ['a'], LibUtils::ArrayUtils.add_all([], ['a'])
	assert_equal ['a','b','c'], LibUtils::ArrayUtils.add_all(['a','b','c'], nil)
	assert_equal ['a','b','c'], LibUtils::ArrayUtils.add_all(['a','b','c'], [])
	assert_equal ['a','b','c','c', 'd', 'e'], LibUtils::ArrayUtils.add_all(['a','b','c'], ['c', 'd', 'e'])
  end

  ###	
  #
  ###  
  def test_contains?
	assert_equal false, LibUtils::ArrayUtils.contains?(nil, '1')
	assert_equal false, LibUtils::ArrayUtils.contains?([], '1')
	assert_equal false, LibUtils::ArrayUtils.contains?(['a'], '1')
	assert_equal true, LibUtils::ArrayUtils.contains?(['a', '1'], '1')
  end  

  ###	
  #
  ###  
  def test_same_length?
	assert_equal true, LibUtils::ArrayUtils.same_length?(nil, nil)
	assert_equal true, LibUtils::ArrayUtils.same_length?([], [])
	assert_equal true, LibUtils::ArrayUtils.same_length?(['a'], ['1'])
	assert_equal false, LibUtils::ArrayUtils.same_length?(['a', '1'], ['1'])
	assert_equal true, LibUtils::ArrayUtils.same_length?(['a', 'b'], ['1', '2'])
  end  
  
  ###	
  #
  ###  
  def test_nil_to_empty
	assert_equal [], LibUtils::ArrayUtils.nil_to_empty(nil)
	assert_equal ['a'], LibUtils::ArrayUtils.nil_to_empty(['a'])
	assert_instance_of Array, LibUtils::ArrayUtils.nil_to_empty(nil)	
	assert_instance_of Array, LibUtils::ArrayUtils.nil_to_empty(['a'])
  end  

  ###	
  #
  ###  
  def test_reverse
	assert_equal nil, LibUtils::ArrayUtils.reverse(nil)
	assert_equal ['a'], LibUtils::ArrayUtils.reverse(['a'])
	assert_equal ['b', 'a'], LibUtils::ArrayUtils.reverse(['a', 'b'])
  end  
  
end