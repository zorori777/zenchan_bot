# frozen_string_literal: true

TodoComment.seed do |s|
  s.id = 1
  s.impressions = "ハンパない"
  s.impressional_status = 4
  s.todo_id = Todo.find_by(title: "伊勢神宮に行く").id
end
