class Car < ApplicationRecord
  belongs_to :user, optional: true
  #Remove optional true
end
