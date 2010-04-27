# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_calliope_session',
  :secret      => 'b06ac15a36a37e04d3f65dd2fdc4f82dde69dc183fe1990cd77598dd067770eba80a1dce7b49b4eb996fec3711f9b8812e6b1be7dafe13a2ac3a768a55c47428'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store