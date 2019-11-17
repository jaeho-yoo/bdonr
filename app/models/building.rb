class Building < ApplicationRecord
    
    # 빌딩은 유저에 종속된다. (1:N 관계)
    belongs_to :user
    
    # Building은 여러 개의 Rooms를 갖는다.
    has_many :rooms
end
