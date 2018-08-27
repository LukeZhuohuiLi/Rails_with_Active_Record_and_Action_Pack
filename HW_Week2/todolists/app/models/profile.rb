class Profile < ActiveRecord::Base
  belongs_to :user
  
  validate :detect_first_or_last_name
  validate :detect_gender
  validate :detect_conflict

 def detect_first_or_last_name
  	if(first_name==nil && last_name==nil)
  		errors.add(:first_name, "First and last name are Null, You need to privode either a first or last name.")
  	end
  end

  def detect_conflict
   	if gender == 'male' && first_name == 'Sue'
   		errors.add(:first_name, "Sue is a girl\'s name" )
   	end
  end
  
  def detect_gender
  	if ((gender != 'male') and (gender != 'female'))
  		errors.add(:gender, "You need to privode a correct gender.")
  	end
  end


  def self.get_all_profiles(min, max)
    Profile.where("birth_year BETWEEN ? and ?", min,max).order(birth_year: :ASC)
  end
end

