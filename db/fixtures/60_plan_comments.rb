# frozen_string_literal: true

PlanComment.seed do |s|
  s.id = 1
  s.impressions = "思った感じもなかったな〜"
  s.impressional_status = 2
  s.plan_id = Plan.find_by(title: "三重県を堪能しよう").id
end
