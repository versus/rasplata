class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.references :user
      t.references :project
      t.references :task
      t.text  :desc
      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
