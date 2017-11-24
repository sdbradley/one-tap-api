class AddTaskIdToTask < ActiveRecord::Migration[5.0]
  def self.up
    add_column(:tasks, :task_id, :string) unless column_exists?(:tasks, :task_id)
  end
  def self.down
    remove_column(:tasks, :task_id) if column_exists?(:tasks, :task_id)
  end
end
