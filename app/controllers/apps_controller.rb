# frozen_string_literal: true
class AppsController < ApplicationController
  def index
    @apps = App.limit(10)

    respond_to do |format|
      format.html
      format.json { render json: @apps }
    end

  end
end
