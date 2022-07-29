# frozen_string_literal: true

require_relative "devise_expirable/version"
require "devise"
require "devise_expirable/models/expirable"

module Devise
  mattr_accessor :expires_in
  @@expires_in = 1.day
end

Devise.add_module :expirable, model: true
