class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  caches_action :with_cache

  def with_cache
    render json: 'with_cache'
  end

  def without_cache
    render json: 'without_cache'
  end
end
