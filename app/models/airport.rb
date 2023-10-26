class Airport < ApplicationRecord
    has_many :flights, class_name: 'Flight'
end
