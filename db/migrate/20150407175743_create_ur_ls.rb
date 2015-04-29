class CreateUrLs < ActiveRecord::Migration
  def change
    create_table :ur_ls do |t|
      t.text :url
      t.text :name

      t.timestamps
    end
  end
end
