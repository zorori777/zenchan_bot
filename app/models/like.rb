# frozen_string_literal: true

class Like < ApplicationRecord
  belongs_to :likeable, polymorphic: true
end
