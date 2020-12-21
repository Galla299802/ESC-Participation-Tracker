class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  def is_admin?
    self.user_role == 1
  end

  def is_supervisor?
    self.supervisor_role == true
  end

  def name
    self[:first_name] + " " + self[:last_name] 
  end

  has_and_belongs_to_many :events
 
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
end
