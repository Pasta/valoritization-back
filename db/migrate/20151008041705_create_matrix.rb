class CreateMatrix < ActiveRecord::Migration
  def change
    create_table :matrices do |t|
      t.string :title
      t.timestamps null: false
    end
  end
end
