class Patient < ActiveRecord::Base
  validates :age, numericality: { greater_than_or_equal_to: 0 }
  validates :weight, numericality: { greater_than: 0 }
  validates :height, numericality: { greater_than: 0 }
end
