# frozen_string_literal: true

class Todo < ApplicationRecord
  belongs_to :user
  has_many   :todo_plans, dependent: :destroy
  has_many   :plans, through: :todo_plans
  has_many   :todo_comments, dependent: :destroy
  has_many   :likes, as: :likeable, dependent: :destroy

  enum eager_status: { "とりあえず": 0, "興味あり": 1, "絶対行く": 2 }
end
