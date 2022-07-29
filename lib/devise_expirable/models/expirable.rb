# frozen_string_literal: true

require_relative "../hooks/expirable"

module Devise
  module Models
    # Expirable takes care of verifying whether a user session has already
    # expired or not. When a session expires after the configured time, the user
    # will be asked for credentials again, it means, they will be redirected
    # to the sign in page.
    #
    # == Options
    #
    # Expirable adds the following options to +devise+:
    #
    #   * +expires_in+: the interval to timeout the user session.
    #
    # == Examples
    #
    #   user.expired?(30.minutes.ago)
    #
    module Expirable
      extend ActiveSupport::Concern

      def self.required_fields(_klass)
        []
      end

      # Checks whether the user session has expired based on configured time.
      def expired?(signed_in_at)
        !expires_in.nil? && signed_in_at && signed_in_at <= expires_in.ago
      end

      def expires_in
        self.class.expires_in
      end


      module ClassMethods
        Devise::Models.config(self, :expires_in)
      end
    end
  end
end
