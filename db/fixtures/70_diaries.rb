# frozen_string_literal: true

Diary.seed do |s|
  s.id = 1
  s.title = "貧乏飯うまし"
  s.contents = "卵かけご飯パない！この世のものではないな！"
  s.user_id = User.find_by(name: "浦飯幽助").id
end
