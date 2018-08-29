class TodoItem < ActiveRecord::Base
	def self.get_number_of_completed_items
        TodoItem.where(completed: true).count
  end 
end
