# frozen_string_literal: true

class TodosController < ApplicationController
  def index
    @todos = Todo.preload(:user).all
  end

  def new
    @todo = current_user.todos.new
  end

  def create
    @todo = current_user.todos.new(create_params)
    if @todo.save
      redirect_to todos_path, notice: "作成されました"
    else
      flash.now[:alert] = "作成を失敗しました "
      render :new
    end
  end

  private

  def create_params
    params.require(:todo).permit(
      :title,
      :url,
      :caution,
      :image,
      :eager_status
    )
  end
end
