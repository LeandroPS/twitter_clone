class Relashionship < ApplicationRecord
  #belongs_to :follower
  #belongs_to :followed

  belongs_to :followed, class_name: "User"
  belongs_to :follower, class_name: "User"
end
