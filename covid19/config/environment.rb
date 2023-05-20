# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Time::DATE_FORMATS[:pais] = "posted on %b, %m %Y - %I:%M%p"
Time::DATE_FORMATS[:mundo] = "posted on %b, %m %Y - %I:%M%p"