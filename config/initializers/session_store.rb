# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_depot_session',
  :secret      =>
'661a31c016ae694d06b289f4b7c597d0f4902022f9fb1bd10d3be17b8ebeda26bc42681742ad8acb254beb9b105d86b73a6954fd75a974520bebdeddf272c5a3'
}


# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
#ActionController::Base.session_store = :active_record_store
