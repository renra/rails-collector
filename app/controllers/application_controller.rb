class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate

  private
  def authenticate
    authenticate_or_request_with_http_digest do |email|
      ::User.all[email]
    end
  end
end
