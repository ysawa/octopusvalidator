class AddPriorityToValidator < ActiveRecord::Migration
  def change
    add_column :validators, :priority, :integer
  end
end
