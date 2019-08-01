Rails.application.routes.draw do
  resource :rss_urls, only: [:index, :create, :patch, :delete]
end
