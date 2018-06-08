# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "MR.Test#{n}"}
    sequence(:email) { |n| "MR.Test#{n}@example.com"}
    image "https://cdn.pixabay.com/photo/2015/06/15/01/04/water-809799_960_720.jpg"
  end
end
