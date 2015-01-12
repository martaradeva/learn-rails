class AddDetailsToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :priority, :integer
    add_column :tasks, :urgency, :boolean
    add_column :tasks, :importance, :boolean
  end
end
