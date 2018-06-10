# frozen_string_literal: true

class Plan < ApplicationRecord
  belongs_to :user
  has_many :todo_plans, dependent: :destroy
  has_many :todos, through: :todo_plans
end
