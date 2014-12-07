class RenameTestsToScreeningTests < ActiveRecord::Migration
  def change
    rename_table :tests, :screening_tests
  end
end
