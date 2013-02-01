class CreateValidators < ActiveRecord::Migration
  def change
    create_table :validators do |t|
      t.string :name
      t.string :format
      t.text :content

      t.timestamps
    end
  end
end
