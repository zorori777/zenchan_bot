# frozen_string_literal: true

DiaryComment.seed do |s|
  s.id = 1
  s.impressions = "それがいつか最高のおもいでになるよ"
  s.impressional_status = 5
  s.diary_id = Diary.find_by(title: "貧乏飯うまし").id
end
