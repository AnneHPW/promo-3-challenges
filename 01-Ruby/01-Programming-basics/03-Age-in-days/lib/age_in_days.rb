# This "require" line loads the contents of the 'date' file from the standard
# Ruby library, giving you access to the Date class.
require 'date'


def age_in_days(day, month, year)
  today = Date.today
  birthday = Date.new(year, month, day)
  return (today - birthday).to_i

  #TODO: return the age expressed in days given the day, month, and year of birth
end
