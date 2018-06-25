# frozen_string_literal: true

class TodosController < ApplicationController
  def index
    @todos = Todo.preload(:user).all
  end

  def new
    @todo = current_user.todos.new
  end

  def create
  end
end
