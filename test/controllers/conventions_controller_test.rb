require "test_helper"

class ConventionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @convention = conventions(:one)
  end

  test "should get index" do
    get conventions_url
    assert_response :success
  end

  test "should get new" do
    get new_convention_url
    assert_response :success
  end

  test "should create convention" do
    assert_difference("Convention.count") do
      post conventions_url, params: { convention: { description: @convention.description, link: @convention.link, location: @convention.location, price: @convention.price, title: @convention.title } }
    end

    assert_redirected_to convention_url(Convention.last)
  end

  test "should show convention" do
    get convention_url(@convention)
    assert_response :success
  end

  test "should get edit" do
    get edit_convention_url(@convention)
    assert_response :success
  end

  test "should update convention" do
    patch convention_url(@convention), params: { convention: { description: @convention.description, link: @convention.link, location: @convention.location, price: @convention.price, title: @convention.title } }
    assert_redirected_to convention_url(@convention)
  end

  test "should destroy convention" do
    assert_difference("Convention.count", -1) do
      delete convention_url(@convention)
    end

    assert_redirected_to conventions_url
  end
end
