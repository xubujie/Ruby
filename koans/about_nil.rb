require File.expand_path(File.dirname(__FILE__) + '/neo')

class AboutNil < Neo::Koan
  def test_nil_is_an_object
    assert_equal true, nil.is_a?(Object), "Unlike NULL in other languages"
  end

  def test_you_dont_get_null_pointer_errors_when_calling_methods_on_nil
    # What happens when you call a method that doesn't exist.  The
    # following begin/rescue/end code block captures the exception and
    # makes some assertions about it.
    begin
      nil.size
    rescue Exception => ex
      # What exception has been caught?
      assert_equal NoMethodError, ex.class
      p ex.message
      # What message was attached to the exception?
      # (HINT: replace __ with part of the error message.)
      # assert_match可以用来比较字符串
      assert_match(/undefined method `size' for nil:NilClass/, ex.message)
    end
  end

  def test_nil_has_a_few_methods_defined_on_it

    p nil.nil?
    p nil.to_s
    p nil.inspect
    assert_equal true, nil.nil?
    assert_equal "", nil.to_s
    assert_equal "nil", nil.inspect
    # todo
    # THINK ABOUT IT:
    #
    # Is it better to use
    #    obj.nil?  用这个更好
    # or
    #    obj == nil
    # Why?
  end

end
