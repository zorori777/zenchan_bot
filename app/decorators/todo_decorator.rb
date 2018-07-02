# frozen_string_literal: true

class TodoDecorator < Draper::Decorator
  def url_present?
    object.url.present?
  end
end
