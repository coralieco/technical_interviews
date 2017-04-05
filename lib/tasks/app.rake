namespace :db do
  desc "calculating mean rating"
  task mean_rating: :environment do
    calculate_mean_rating
  end
end

def calculate_mean_rating
  @apps = App.all
  @apps.each do |app|
    ratings = []
    app.reviews.each do |review|
      ratings << review.rating
    end
    if !ratings.nil?
      app.mean_rating = ratings.reduce(:+).fdiv(ratings.length)
    else
      "Nil ratings - check DB"
    end
    app.mean_rating
    app.save
  end
end

# test avec rake db:mean_rating

# Calcul de la moyenne d'une app avec SQL
# SELECT app_id, AVG(rating)
# FROM reviews
# GROUP BY app_id
