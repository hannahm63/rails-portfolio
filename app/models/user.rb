class User < ApplicationRecord

  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :trackable,
         :recoverable, :rememberable, :validatable 

  validates_presence_of :name

  def first_name
    self.name.split.first 
  end

  def last_name
    self.name.split.last
  end

end
