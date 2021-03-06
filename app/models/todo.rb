class Todo < ActiveRecord::Base
  belongs_to :user

  default_scope { order('created_at DESC') }
  
  require 'date'
  def Todo.delete_all_todos
    Todo.where("created_at <= ?", Time.now - 7.days).destroy_all
  end

  def days_left
    sdate = self.created_at
    sdate.to_i
    maxdate = sdate.to_i + 7.days.to_i
    remaining = maxdate.to_i - Time.now.to_i
    Time.at(remaining).day
  end

end
