# frozen_string_literal: true

class Api::V1::LinebotsController < ApplicationController
  require 'line/bot'  # gem 'line-bot-api'

  def client
    @client ||= Line::Bot::Client.new do |config|
      config.channel_secret = Rails.application.credentials.linebot[:channel_secret]
      config.channel_token = Rails.application.credentials.linebot[:channel_token]
    end
  end

  def create
    body = request.body.read

    events = client.parse_events_from(body)
    events.each do |event|
      case event
      when Line::Bot::Event::Message
        case event.type
        when Line::Bot::Event::MessageType::Text
          message = {
            type: 'text',
            text: event.message['text']
          }
          client.reply_message(event['replyToken'], message)
        when Line::Bot::Event::MessageType::Image, Line::Bot::Event::MessageType::Video
          response = client.get_message_content(event.message['id'])
          tf = Tempfile.open("content")
          tf.write(response.body)
        end
      end
    end
    head :ok
  end
end
