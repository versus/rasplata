class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.text :desc
      t.decimal :summ
      t.decimal :rate
      t.references :user
      t.timestamp :deleted_at
      t.integer :status
      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end 
