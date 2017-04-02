# frozen_string_literal: true
class AppsController < ApplicationController
  def index
    @apps = App.where(published: true).limit(10)

  end
end
