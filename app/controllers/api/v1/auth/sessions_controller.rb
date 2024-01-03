# frozen_string_literal: true

module Api
  module V1
    module Auth
      class SessionsController < ApplicationController
        def index
          if current_api_v1_user
            render json: { is_login: true, data: current_api_v1_user }
          else
            render json: { is_login: false, message: 'User not found' }
          end
        end
      end
    end
  end
end
