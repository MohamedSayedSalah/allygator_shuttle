class LastLocation < ApplicationRecord
  belongs_to :vehicle , optional: true

  def self.reset_last_location 
  	self.destroy_all 
  end

end
