require 'test_helper'

class TodoItemsControllerTest < ActionController::TestCase
  setup do
    @recipes_list = recipes_lists(:one)
    @todo_item = todo_items(:one)
  end

  test "should get index" do
    get :index, params: { recipes_list_id: @recipes_list }
    assert_response :success
  end

  test "should get new" do
    get :new, params: { recipes_list_id: @recipes_list }
    assert_response :success
  end

  test "should create todo_item" do
    assert_difference('TodoItem.count') do
      post :create, params: { recipes_list_id: @recipes_list, todo_item: @todo_item.attributes }
    end

    assert_redirected_to recipes_list_todo_item_path(@recipes_list, TodoItem.last)
  end

  test "should show todo_item" do
    get :show, params: { recipes_list_id: @recipes_list, id: @todo_item }
    assert_response :success
  end

  test "should get edit" do
    get :edit, params: { recipes_list_id: @recipes_list, id: @todo_item }
    assert_response :success
  end

  test "should update todo_item" do
    put :update, params: { recipes_list_id: @recipes_list, id: @todo_item, todo_item: @todo_item.attributes }
    assert_redirected_to recipes_list_todo_item_path(@recipes_list, TodoItem.last)
  end

  test "should destroy todo_item" do
    assert_difference('TodoItem.count', -1) do
      delete :destroy, params: { recipes_list_id: @recipes_list, id: @todo_item }
    end

    assert_redirected_to recipes_list_todo_items_path(@recipes_list)
  end
end
