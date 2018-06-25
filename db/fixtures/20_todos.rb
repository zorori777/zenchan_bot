# frozen_string_literal: true

Todo.seed do |s|
  s.id = 1
  s.title = "伊勢神宮に行く"
  s.url = "http://www.isejingu.or.jp/"
  s.caution = "白い蛇が出ます"
  s.eager_status = 2
  s.executed_status = 1
  s.user_id = User.find_by(name: "浦飯幽助").id
end
