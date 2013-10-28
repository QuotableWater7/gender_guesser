require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test "enforce presence of weight" do
  	person = Person.new(:gender => 'blah', :height => 5)  
    if !person.save
      assert true, 'This passed'
    elsif 
      assert false, 'Savid without a height.  Fix this!'
    end
  end

  test "enforce presence of height" do
  	person = Person.new(:gender => 'blah', :weight => 5)
    if !person.save
      assert true, 'This passed'
    elsif 
      assert false, 'Savid without a weight.  Fix this!'
    end
  end

  test "enforce presence of gender" do
  	person = Person.new(:weight => 5, :height => 5)
  	if !person.save
      assert true, 'This passed'
    elsif 
      assert false, 'Savid without a gender.  Fix this!'
    end
  end
end
