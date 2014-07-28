# 20140728111500_add_rating_to_posts.rb
class AddRatingToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :rating, :integer
  end
end