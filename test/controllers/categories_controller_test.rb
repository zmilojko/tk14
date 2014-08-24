require 'test_helper'

class CategoriesControllerTest < ActionController::TestCase
  setup do
    @category = categories(:one)
    @category_two = categories(:two)
    sign_in users(:admin)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post :create, category: { code: @category.code, description: @category.description, length: @category.length }
    end

    assert_redirected_to category_path(assigns(:category))
  end

  test "should show category" do
    get :show, id: @category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category
    assert_response :success
  end

  test "should update category" do
    patch :update, id: @category, category: { code: @category.code, description: @category.description, length: @category.length }
    assert_redirected_to category_path(assigns(:category))
  end

  test "should raise error when destroying category with dependent race" do
    assert_raises(ActiveRecord::DeleteRestrictionError) do
      delete :destroy, id: @category
    end
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete :destroy, id: @category_two
    end
    assert_redirected_to categories_path
  end
end
