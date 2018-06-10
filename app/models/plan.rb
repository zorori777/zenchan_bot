# frozen_string_literal: true

class Plan < ApplicationRecord
  belongs_to :user
  has_many :todo_plans, dependent: :destroy
  has_many :todos, through: :todo_plans
  has_many :plan_comments, dependent: :destroy
end
