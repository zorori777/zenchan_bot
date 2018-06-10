# frozen_string_literal: true

class TodoPlan < ApplicationRecord
  belongs_to :todo
  belongs_to :plan
end
