require "rails_helper"
require 'rake'

describe "db:mean_rating" do

  before do
    load File.expand_path("../../../lib/tasks/app.rake", __FILE__)
    Rake::Task.define_task(:environment)
  end

  it "should return the correct mean_rating" do

    app_test = App.create(id:1)

    review_1 = Review.create(rating: 1, app_id: 1)
    review_2 = Review.create(rating: 5, app_id: 1)

    expect(app_test.mean_rating).to eq(3)

    Rake::Task["db:mean_rating"].invoke

  end
end


# Test avec bundle exec rspec spec/lib/mean_rating.rb

# Ce test ne fonctionne pas, la DB fraichement créée ne passe pas par la task
# et app_test.mean_rating reste à nil

