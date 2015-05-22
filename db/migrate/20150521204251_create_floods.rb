class CreateFloods < ActiveRecord::Migration
  def change
    create_table :floods do |t|
      t.float :normal_level
      t.string :location
      t.float :current_level
      t.boolean :flooded

      t.timestamps
    end
  end
end
