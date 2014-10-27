class TodosController < ApplicationController

  
  before_action :set_todo, only: [:show, :edit, :update, :destroy]

  def index
    @todos = Todo.all
  end

  def show
  end

  def new
    @todo = Todo.new
  end

  def edit
  end

  def create
     @todo = Todo.new(todo_params)
     @todo.save!
     redirect_to @todo, notice: 'Your new TODO was saved'
  end
  
  def destroy
    @todo.destroy

    redirect_to todos_path
  end


   private

   def set_todo
    @todo = Todo.find(params[:id])
  end
 
   def todo_params
     params.require(:todo).permit(:description)
   end

end