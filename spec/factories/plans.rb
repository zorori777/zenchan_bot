# frozen_string_literal: true

FactoryBot.define do
  factory :plan do
    sequence(:title) { |n| "あなたとデート ~part#{n}~"}
    appointed_place "新宿駅"
    executed_status 0
    appointed_at { Time.zone.tomorrow }
    executed_at { Time.zone.tomorrow }
    user
  end
end
