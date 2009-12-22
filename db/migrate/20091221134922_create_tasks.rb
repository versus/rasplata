class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.timestamp :deleted_at
      t.string :title
      t.text :desc
      t.references :user
      t.references  :project
      t.decimal :rate
      t.decimal :summ
      t.boolean :status
      t.boolean :billable
      t.integer :timer
      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
