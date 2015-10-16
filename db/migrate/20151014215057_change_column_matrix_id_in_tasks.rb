class ChangeColumnMatrixIdInTasks < ActiveRecord::Migration
  def change
    change_column :tasks, :matrix_id, :integer, null: false
  end
end
