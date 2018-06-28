# frozen_string_literal: true

class TodosController < ApplicationController
  def index
    @todos = Todo.preload(:user).with_preloaded_image.all
  end

  def new
    @todo = current_user.todos.new
  end

  def create
    @todo = current_user.todos.new(create_params)
    if @todo.save
      redirect_to todos_path, notice: "作成しました"
    else
      flash.now[:alert] = "作成できませんでした"
      render :new
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update(create_params)
      redirect_to todos_path, notice: "編集しました"
    else
      flash.now[:alert] = "編集できませんでした"
      render :edit
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
