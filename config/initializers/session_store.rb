# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cc-portal-rest-server_session',
  :secret      => '1043e601934ff93d2c57b8048d1350ae84b733d134b7c27cc2ac5b07fafdb92bc46f7a8f8d1d512971b6ef206a80824ce93cc3083e93bb6ff56e5d516dff1cee'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
