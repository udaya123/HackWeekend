class Company < ActiveRecord::Base
  milestone = {
  	#Point value is out of 1000
  	#We will need to add validation to make sure number can't be negative or exceed 1000
  	emailed => 50,
  	contacted => 100, 
  	applied => 50, 
  	asked_for_coffee => 100,
  	got_coffee => 150,
  	viewed space => 50,
  	interviewed => 200,
  	got_offer => 300
  }
end
