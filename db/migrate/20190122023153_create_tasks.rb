class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.integer :userid
      t.boolean :archived
      t.boolean :complete
      t.integer :group1
      t.integer :board
      t.string :description

      t.timestamps
    end
  end
end
