class Medium < ActiveRecord::Base
  belongs_to :service_request
  belongs_to :user
  mount_uploader :name, MediaUploader
end