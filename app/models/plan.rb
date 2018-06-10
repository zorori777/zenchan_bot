# frozen_string_literal: true

class Plan < ApplicationRecord
  enum executed_status: { unfinished: 0, finished: 1}
  belongs_to :user
end
