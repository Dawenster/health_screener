class ScreeningTest < ActiveRecord::Base
  before_save :default_age

  def default_age
    self.start_age ||= 0
    self.end_age ||= 200
  end
end
