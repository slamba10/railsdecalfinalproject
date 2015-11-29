class AddAssignByToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :assign_by, :integer
  end
end
