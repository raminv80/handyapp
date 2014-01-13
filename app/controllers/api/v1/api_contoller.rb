class Api::V1::ApiController < RocketPants::Base
  jsonp

  before_filter :protect_api

  protected

  def protect_api
    api_key = ApiKey.find_by_app_name_and_access_token(
      request.headers['HTTP_APP_NAME'], request.headers['HTTP_API_KEY'])
    error! :unauthenticated if api_key.nil?
  end
end
