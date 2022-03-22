class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :check_page
  before_action :update_allowed_parameters, if: :devise_controller?
end
