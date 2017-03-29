# frozen_string_literal: true
class AppsController < ApplicationController
  def index
    @apps = App.limit(10)
  end
end
