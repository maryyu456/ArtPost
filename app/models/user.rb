class User < ApplicationRecord
  attr_reader :role
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :artworks
  has_one :profile
  

  accepts_nested_attributes_for :profile
  
  delegate :nickname, :first_name, :last_name, to: :profile
  
  def admin?
    role == "admin"
  end
  
  def pm?
    role == "pm"
  end
  
  def display_name
    if profile.present?
      if nickname.present?
        return nickname
      else
        return first_name.to_s + " " + last_name.to_s
      end
    else
      return email.split("@").first
    end  
  end
end
