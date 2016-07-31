class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :companies

  def total_points
    self.points_total = 0
    self.companies.each do |company|
      self.points_total += company.points
    end
    self.save!
  end
end
