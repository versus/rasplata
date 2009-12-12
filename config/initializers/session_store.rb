# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_invoice_session',
  :secret      => '2306b13a90b6e740f831c26f034fffc170ee75fb74979da72e083e07cd950e6136a826abd76021ad1856fc2c5545c4ff6905ebf8715bc60f501b93a0baea1809'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
