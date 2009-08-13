# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_blog_session',
  :secret      => '10cb085b6ad1db5954acc3a2cddb5d8edd8fdae0eb37acdf2d0fd7095d5bfa6c6342a7c274803ae5dd9ec4db2bc24bcb1caa94fc83b0f8d7f551edfb8b11180a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
