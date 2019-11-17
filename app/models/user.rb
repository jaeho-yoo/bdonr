class User < ApplicationRecord
  
  # User는 여러 개의 Buildings을 갖는다.
  has_many :buildings
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
