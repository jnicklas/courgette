# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_fixture_rails_root_session',
  :secret      => '4042769baf2ecc8088cde8e4a2c4eb9fe4fbed23b97155d22da2c1db1183553187cf5cd26c8be21f1d408c7d325571b7cbab66b1c2d2f9e18523e0100b5c4e60'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
