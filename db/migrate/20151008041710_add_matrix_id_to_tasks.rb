class AddMatrixIdToTasks < ActiveRecord::Migration
  def change
    add_column :tasks, :matrix_id, :integer
    add_foreign_key :tasks, :matrices
  end
end
