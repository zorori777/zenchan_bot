# frozen_string_literal: true

FactoryBot.define do
  factory :todo do
    title "鎌倉のパン屋さんにいく"
    url  "http://localhost:3000/"
    caution "雨の日は半額"
    eager_status 2
    user
  end
end
