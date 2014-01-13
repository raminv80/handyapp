class ServiceRequest < ActiveRecord::Base
	has_one :review
	has_many :negotiations
	belongs_to :user
	belongs_to :service_type
	has_many :media
	accepts_nested_attributes_for :media, :allow_destroy => true
end