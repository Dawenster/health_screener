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

  def get_age_range_string
    age_range_string = ""
    case self.start_age
    when 0
      case self.end_age
      when 200
        age_range_string = "of all ages"
      else
        age_range_string = "below age "+self.end_age.to_s
      end
    else
      case self.end_age
      when 200
        age_range_string = "above age "+self.start_age.to_s
      else
        age_range_string = "between ages of "+self.start_age.to_s+ " and "+self.end_age.to_s
      end
    end
    return age_range_string
  end

end
