class CreateTamas < ActiveRecord::Migration
  def change
    create_table :tamas do |t|

      t.timestamps
    end
  end
end
