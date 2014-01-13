class Negotiation < ActiveRecord::Base
  belongs_to :quata
  belongs_to :from, class_name: "User"
  belongs_to :to, class_name: "User"
end
