class CreateMatrix < ActiveRecord::Migration
  def change
    create_table :matrices, id: :uuid   do |t|

      t.string :title
      t.timestamps null: false
    end
  end
end
