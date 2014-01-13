class Quatum < ActiveRecord::Base
  belongs_to :service_request
  belongs_to :user
  belongs_to :service
  belongs_to :sender, class_name:"User"
end
