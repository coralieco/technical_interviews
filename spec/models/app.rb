require "rails_helper"


# RSpec.describe App, :type => :model do
#   it "applies a default scope for published apps" do
#     expect(App.all.to_sql).to eq App.where(published: true).to_sql
#   end
# end


RSpec.describe App, :type => :model do
  App.destroy_all
  app_a = App.create(name: "a", published: true)
  app_b = App.create(name: "b", published: false)

  it "applies a default scope for published apps" do
    expect(App.all).to eq [app_a]
  end
end

# J'ai créé deux instances de App pour ensuite vérifier sur ce cas particulier,
# que seule l'instance published: true (=> app_a) ressort dans App.all

# J'ai utilisé destroy_all pour nettoyer le cache lors de mes tests successifs
# test avec bundle exec rspec spec/models/app.rb
