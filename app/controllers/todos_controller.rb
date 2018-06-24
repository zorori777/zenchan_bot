# frozen_string_literal: true

class TodosController < ApplicationController
  def index
    @todos = Todo.preload(:user).all
  end
end
