class AddRelationshipToTodoList < ActiveRecord::Migration
  def change
    add_reference :todo_lists, :User, index: true, foreign_key: true
  end
end
