class Event < ApplicationRecord
    #has_one :avatar
    def title
        self[:EventName]
    end
    has_and_belongs_to_many :users
    

end
