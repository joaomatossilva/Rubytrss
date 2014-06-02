Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  #provider :twitter, ENV['TWITTER_KEY'], ENV['TWITTER_SECRET']
  #provider :facebook, ENV['FACEBOOK_KEY'], ENV['FACEBOOK_SECRET']
  #provider :github, ENV['GITHUB_KEY'], ENV['GITHUB_SECRET']
  #provider :google_oauth2, ENV["GOOGLE_CLIENT_ID"], ENV["GOOGLE_CLIENT_SECRET"]
  #provider :google_oauth2, "462794676500.apps.googleusercontent.com", "AIzaSyD6-gAPyfBtErRatBRwm7MfpzY4C-3PH0M"
  provider :google_apps #, domain: 'intridea.com'
end