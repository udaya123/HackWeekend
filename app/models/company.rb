class Company < ActiveRecord::Base
  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

  milestone = {
  	#Point value is out of 1000
  	#We will need to add validation to make sure number can't be negative or exceed 1000
  	"emailed" => 50,
  	"contacted" => 100,
  	"applied" => 50,
  	"asked_for_coffee" => 100,
  	"got_coffee" => 150,
  	"viewed_space" => 50,
  	"interviewed" => 200,
  	"got_offer" => 300
  }
end
