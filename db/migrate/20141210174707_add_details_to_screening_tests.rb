class AddDetailsToScreeningTests < ActiveRecord::Migration
  def change
    add_column :screening_tests, :starting_criteria, :text
    add_column :screening_tests, :ending_criteria, :text
    add_column :screening_tests, :disease, :string
    add_column :screening_tests, :alternative_tests, :string
    add_column :screening_tests, :additional_risk_factors, :text
  end
end
