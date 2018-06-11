# frozen_string_literal: true

class Todo < ApplicationRecord
  belongs_to :user
  has_many   :todo_plans, dependent: :destroy
  has_many   :plans, through: :todo_plans
  has_many   :todo_comments, dependent: :destroy
  has_many   :likes, as: :likeable, dependent: :destroy
end
