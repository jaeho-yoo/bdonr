class Tenant < ApplicationRecord
    
    # Tenants는 Room에 종속된다. (1:N 관계)
    belongs_to :room
    
    # Tenant는 여러 개의 Payments를 갖는다.
    has_many :payments
end