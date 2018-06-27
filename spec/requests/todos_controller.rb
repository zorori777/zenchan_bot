# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TodosController, type: :request do
  describe "#index" do
    it "returns 302" do
      get todos_path
      expect(response.status).to eq(302)
    end
  end

  describe "#new" do
    it "returns 302" do
      get new_todo_path
      expect(response.status).to eq(302)
    end
  end

  describe "#create" do
    it "returns 302 " do
      post todos_path, params: { todo: attributes_for(:todo) }
      expect(response.status).to eq(302)
    end
  end
end
