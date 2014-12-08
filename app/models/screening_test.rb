class ScreeningTest < ActiveRecord::Base
  before_save :default_age

  def default_age
    self.start_age ||= 0
    self.end_age ||= 200
  end


  def get_gender_string
    gender_string = "males or females"
    case self.gender
      when "male"
        gender_string = "males"
      when "female"
        gender_string = "females"
      else
        gender_string = "males or females"   
    end 
  end

end
