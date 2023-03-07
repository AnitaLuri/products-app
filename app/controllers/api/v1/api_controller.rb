# frozen_string_literal: true

module Api
  module V1
    class ApiController < ApplicationController
      rescue_from ActiveRecord::ActiveRecordError, with: :return500
      rescue_from ActiveRecord::RecordNotFound, with: :return404

      private

      def return500
        render status: :internal_server_error, json: {}
      end

      def return404
        render status: :not_found, json: {}
      end
    end
  end
end
