class ServiceType < ActiveRecord::Base
	has_many :services
	has_many :service_requests
end
