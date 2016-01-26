class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  before_filter :log_params, unless: -> { Rails.env.production? }

  def log_params
    Rails.logger.ap params
  end

end
