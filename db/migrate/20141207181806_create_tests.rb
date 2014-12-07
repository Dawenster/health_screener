class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
    	t.string :name
    	t.integer :start_age
    	t.integer :end_age
    	t.string :gender
    	t.string :interval
    	t.text :additional_info
    	t.text :source
    	t.text :follow_up

    	t.timestamps
    end
  end
end