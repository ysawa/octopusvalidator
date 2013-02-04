class AddIframeToValidator < ActiveRecord::Migration
  def change
    add_column :validators, :iframe, :boolean, default: true
  end
end
