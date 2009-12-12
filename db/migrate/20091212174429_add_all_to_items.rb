class AddAllToItems < ActiveRecord::Migration
  def self.up
    add_column :items, :qty, :integer, :null => false, :default => 1
    add_column :items, :type_item, :string
    add_column :items, :desc, :text
    add_column :items, :price, :float
  end

  def self.down
    remove_column :items, :qty
    remove_column :items, :type_item
    remove_column :items, :desc
    remove_column :items, :price
  end
end
