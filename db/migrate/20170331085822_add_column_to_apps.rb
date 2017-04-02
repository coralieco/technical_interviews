class AddColumnToApps < ActiveRecord::Migration
  def change
    add_column :apps, :published, :boolean
  end
end
