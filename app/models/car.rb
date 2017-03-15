class Car < ApplicationRecord

  def self.makes
    ['Jeep', 'Toyota', 'Ford', 'Chevy']
  end
  #Callbacks
  # Associations


  # validations
  # second line of defense
  validates_presence_of :make, :year, :color
  validates_inclusion_of :make, in: makes

  # Instance methods
  def info
    "Car with make of #{make}, was made in #{year}, and is #{color}"
end

def make_year
  "#{make} #{year}"
end



  # Class methods
#class methods start with self in front of them

#scope
  def self.by_year
    #ASC
    #Defualt  - ASC
    # order(:year)

    #DESC
    order(year: :desc)
  end
end
