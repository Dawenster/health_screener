class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.integer :age
      t.string :gender
      t.integer :weight
      t.integer :height

      t.timestamps
    end
  end
end
