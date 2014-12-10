class AddSmokingHistoryToPatient < ActiveRecord::Migration
  def change
    add_column :patients, :smoking_history, :boolean
  end
end
