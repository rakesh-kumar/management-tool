class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :team, optional: true  

  has_many :user_projects
  has_many :projects, through: :user_projects   

  has_many :admin_projects, :class_name => "Project",  :foreign_key => 'user_id',  
    :dependent => :destroy
end
