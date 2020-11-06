if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_gabes-music-backend", domain: "gabes-music-reviews.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_gabes-music-backend", domain: "gabes-music-reviews.herokuapp.com"
end
