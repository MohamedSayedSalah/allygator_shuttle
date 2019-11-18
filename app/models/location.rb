class Location < ApplicationRecord
  belongs_to :vehicle , optional: true

end
