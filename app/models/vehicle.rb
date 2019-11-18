class Vehicle < ApplicationRecord
has_many :locations ,  dependent: :delete_all
has_one :last_location ,  dependent: :destroy
end
