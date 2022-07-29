# frozen_string_literal: true

# After we set the other `after_set_user` callbacks we'll register our forced
# session expiration callback to run last
Warden::Manager.after_set_user do |record, warden, options|
  scope = options[:scope]

  if warden.authenticated?(scope)
    proxy = Devise::Hooks::Proxy.new(warden)
    if record.respond_to?(:expired?) && record.expired?(record.current_sign_in_at)
      Devise.sign_out_all_scopes ? proxy.sign_out : proxy.sign_out(scope)
    end
  end
end
