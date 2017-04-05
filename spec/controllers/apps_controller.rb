require "rails_helper"

RSpec.describe AppsController, :type => :controller do

# Je vérifie le succès de la requête de ma méthode

  describe "GET index" do
    it "has a 200 status code" do
      get :index
      expect(response.status).to eq(200)
    end
  end

# Je teste les formats pour les requêtes HTML et JSON

  describe "responds to" do
    it "responds to html format" do
      post :index, { :app => { :name => "name" } }
      expect(response.content_type).to eq "text/html"
    end
    it "reponds to json format" do
      post :index, { :app => { :name => "name"}, :format => :json }
      expect(response.content_type).to eq "application/json"
    end
  end
end


# Test avec bundle exec rspec spec/controllers/apps_controller.rb
