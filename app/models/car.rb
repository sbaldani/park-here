class Car < ApplicationRecord
  belongs_to :user, optional: true
  #Remove optional true
#  acts_as_paranoid
end
