class Company < ActiveRecord::Base

  belongs_to :user
  has_many :contacts

  has_attached_file :logo, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: ":style/company-logo-default.png"
  validates_attachment_content_type :logo, content_type: /\Aimage\/.*\Z/

end
