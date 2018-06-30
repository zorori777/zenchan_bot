# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def redirect_path_and_message(path, message)
    redirect_to path, notice: message
  end

  def flash_message_and_render(message, path)
    flash.now[:alert] = message
    render path
  end
end
