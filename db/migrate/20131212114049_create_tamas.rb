class CreateTamas < ActiveRecord::Migration
  def change
    create_table :tamas do |t|
      t.string :name
      t.integer :health
      t.integer :mentalState

      t.timestamps
    end
  end
end
