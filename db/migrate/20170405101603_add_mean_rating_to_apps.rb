class AddMeanRatingToApps < ActiveRecord::Migration
  def change
    add_column :apps, :mean_rating, :float
  end
end
