# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_locale

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end
end
