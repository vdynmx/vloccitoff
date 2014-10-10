class TodosController < ApplicationController
  def new
  end
  def create
     @todo = Todo.new(todo_params)
     @todo.save!
     redirect_to @todo, notice: 'Your new TODO was saved'
   end
  def show
    puts params
    puts "*" * 100
    @todo = Todo.find params[:id]
  end
   private
 
   def todo_params
     params.require(:todo).permit(:description)
   end

end