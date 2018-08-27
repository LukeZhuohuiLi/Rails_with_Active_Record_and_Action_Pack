class Profile < ActiveRecord::Base
  belongs_to :user

  validate :Detect_first_or_last_name
  validate :Detect_gender
  validate :Detect_conflict

  def Detect_first_or_last_name
  	if first_name.nil?  && last_name.nil?
  		errors.add(:first_name, "First and last name are Null, You need to privode either a first or last name.")
  	end
  end

  def Detect_gender
  	if ((gender != 'male') or (gender != 'female'))
  		errors.add(:gender, "You need to privode a correct gender.")
  	end
  end

  def Detect_conflict
   	if gender == 'male' && first_name == 'Sue'
   		errors.add(:first_name, "Sue is a girl\'s name" )
   	end
  end
end

