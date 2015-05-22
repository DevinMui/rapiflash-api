class ChangeUpstreamColumnToInteger < ActiveRecord::Migration
  def change
    change_column :floods, :upstream, :integer
  end
end
