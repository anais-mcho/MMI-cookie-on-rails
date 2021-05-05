class TodoItemsController < ApplicationController
  before_action :set_recipes_list
  before_action :set_todo_item, only: [:show, :edit, :update, :destroy]

  # GET recipes_lists/1/todo_items
  def index
    @todo_items = @recipes_list.todo_items
  end

  # GET recipes_lists/1/todo_items/1
  def show
  end

  # GET recipes_lists/1/todo_items/new
  def new
    @todo_item = @recipes_list.todo_items.build
  end

  # GET recipes_lists/1/todo_items/1/edit
  def edit
  end

  # POST recipes_lists/1/todo_items
  def create
    @todo_item = @recipes_list.todo_items.build(todo_item_params)

    if @todo_item.save
      redirect_to([@todo_item.recipes_list, @todo_item], notice: 'Todo item was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT recipes_lists/1/todo_items/1
  def update
    if @todo_item.update_attribute(todo_item_params)
      redirect_to([@todo_item.recipes_list, @todo_item], notice: 'Todo item was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE recipes_lists/1/todo_items/1
  def destroy
    @todo_item.destroy

    redirect_to recipes_list_todo_items_url(@recipes_list)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipes_list
      @recipes_list = RecipesList.find(params[:recipes_list_id])
    end

    def set_todo_item
      @todo_item = @recipes_list.todo_items.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def todo_item_params
      params.require(:todo_item).permit(:description, :completed, :completed_at, :recipes_list_id)
    end
end
