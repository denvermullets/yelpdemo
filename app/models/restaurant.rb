class Restaurant < ApplicationRecord
    validates :name, :website, :address, presence: true
    validates :phone, presence: true, length: { minimum: 9 }
    
end
