# frozen_string_literal: true

Plan.seed do |s|
  s.id = 1
  s.title = "三重県を堪能しよう"
  s.appointed_place = "東京駅八重洲北口"
  s.executed_status = 0
  s.appointed_at = Time.zone.tomorrow
  s.executed_at = Time.zone.tomorrow
  s.user_id = User.find_by(name: "浦飯幽助").id
end
