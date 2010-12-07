# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sftest_session',
  :secret      => '4ecf53bef632ff1f8ea7c435bc88387e00caf22b1d53ec40f9582e0fcd07fd68af9d38c9b3d0b40d3c5daadfabfae422591b1b3977dbb0e23ac223141b627a21'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
