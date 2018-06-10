# frozen_string_literal: true

Todo.seed do |s|
  s.id = 1
  s.title = "伊勢神宮に行く"
  s.image = "https://c-gurutabi.gnst.jp/public/img/article/5c/24/art000429/article_art000429_2.jpg?20151222085534"
  s.url = "http://www.isejingu.or.jp/"
  s.caution = "白い蛇が出ます"
  s.eager_status = 2
  s.user_id = User.find_by(name: "浦飯幽助").id
end

Todo.seed do |s|
  s.id = 2
  s.title = "桜島に行く"
  s.image = "http://www.sakurajima-kinkowan-geo.jp/geopark/wp-content/uploads/2017/06/1706_1-5.jpg"
  s.url = "http://www.sakurajima.gr.jp/"
  s.caution = "噴火に注意"
  s.eager_status = 4
  s.user_id = User.find_by(name: "浦飯幽助").id
end

Todo.seed do |s|
  s.id = 3
  s.title = "パンケーキ食べたい"
  s.image = "https://cdn.macaro-ni.jp/image/summary/29/29888/fb0d721abb92c077360edd2a796bc016.jpg"
  s.url = "https://magia.tokyo/"
  s.caution = nil
  s.eager_status = 5
  s.user_id = User.find_by(name: "コエンマ").id
end
