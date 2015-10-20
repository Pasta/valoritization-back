class ChangeColumnMatrixIdInTasks < ActiveRecord::Migration
  def change
    change_column :tasks, :matrix_id, :uuid, null: false
  end
end
