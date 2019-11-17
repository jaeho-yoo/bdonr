class Room < ApplicationRecord
    
    # Rooms는 Building에 종속된다. (1:N 관계)
    belongs_to :building
    
    # Room은 여러 개의 Tenants를 갖는다.
    has_many :tenants
end