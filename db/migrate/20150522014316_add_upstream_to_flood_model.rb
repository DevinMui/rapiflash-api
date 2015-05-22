class AddUpstreamToFloodModel < ActiveRecord::Migration
  def change
    add_column :floods, :upstream, :boolean
  end
end
