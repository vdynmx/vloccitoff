class Todo < ActiveRecord::Base
  def Todo.delete_all_todos
    Todo.where("created_at <= ?", Time.now - 7.days).destroy_all
  end
end
