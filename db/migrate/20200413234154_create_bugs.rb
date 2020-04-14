class CreateBugs < ActiveRecord::Migration[5.2]
  def change
    create_table :bugs do |t|
      t.string :issue
      t.integer :developer_id
      t.timestamps
    end
  end
end
