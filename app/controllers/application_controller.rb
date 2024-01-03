# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include DeviseTokenAuth::Concerns::SetUserByToken
  include DeviseHackFakeSession

  skip_before_action :verify_authenticity_token, if: :devise_controller?
  helper_method :current_user, :user_signed_in?
end
