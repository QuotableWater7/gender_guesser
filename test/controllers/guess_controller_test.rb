require 'test_helper'

class GuessControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get prediction" do
  	get :prediction
  	assert_response :success
  end

  test "at least one male and female in DB" do
    @males = Person.where(:gender => 'm')
    @females = Person.where(:gender => 'f')
  	assert @males.length > 0 && @females.length > 0
  end
end
