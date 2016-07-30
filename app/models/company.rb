class Company < ActiveRecord::Base
  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ":style/company-logo-default.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

  milestone = {
  	#Point value is out of 100
  	"contacted" => 14,
  	"set_up_meeting" => 28,
  	"got_coffee" => 43,
  	"followed_up" => 57,
  	"applied" => 71,
  	"interviewing" => 86, 
  	"got_offer" => 100
  }
end
