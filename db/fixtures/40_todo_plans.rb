# frozen_string_literal: true

TodoPlan.seed do |s|
  s.todo_id = Todo.find_by(title: "伊勢神宮に行く").id
  s.plan_id = Plan.find_by(title: "三重県を堪能しよう").id
end
