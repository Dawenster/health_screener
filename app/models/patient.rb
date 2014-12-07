class Patient < ActiveRecord::Base
  validates :age, :gender, presence: true
  validates :gender, inclusion: %w(male female)
  validates :age, numericality: { greater_than_or_equal_to: 0 }
  validates :weight, numericality: { greater_than: 0 }
  validates :height, numericality: { greater_than: 0 }
end
