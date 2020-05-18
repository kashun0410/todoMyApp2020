class TodoListsController < ApplicationController

  def index
    @todoLists = TodoList.includes(:user).order("created_at DESC").where(user_id: "#{current_user.id}")
  end

  def new
    @todoLists = TodoList.new
  end

  def create
    TodoList.create(post_params)
    redirect_to root_path
  end

  def show
    @todoLists = Todolist.find_by(id: params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
    todoList = TodoList.find(params[:id])
    todoList.destroy
    redirect_to root_path
  end

  private
  def post_params
    params.require(:todo_list).permit(:title, :content, :lank, :star, :deadline_date).merge(user_id: current_user.id)
  end

end
