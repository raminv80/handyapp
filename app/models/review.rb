class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :service
  belongs_to :service_request
end
