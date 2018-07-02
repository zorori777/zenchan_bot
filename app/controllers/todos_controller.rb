# frozen_string_literal: true

class TodosController < ApplicationController
  before_action :set_todo, only: %i[edit update destroy]

  def index
    @todos = Todo.preload(:user).with_preloaded_image.all
  end

  def new
    @todo = current_user.todos.new
  end

  def create
    @todo = current_user.todos.new(create_params)
    if @todo.save
      redirect_path_and_message(todos_path, "作成しました")
    else
      flash_message_and_render("作成できませんでした", :new)
    end
  end

  def edit
  end

  def update
    if @todo.update(create_params)
      redirect_path_and_message(todos_path, "編集しました")
    else
      flash_message_and_render("編集できませんでした", :edit)
    end
  end

  def destroy
    @todo.destroy
    redirect_path_and_message(todos_path, "削除しました")
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

  def set_todo
    @todo = Todo.find(params[:id])
  end
end
