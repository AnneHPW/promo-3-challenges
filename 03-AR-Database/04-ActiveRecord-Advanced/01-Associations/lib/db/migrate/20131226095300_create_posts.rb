class CreatePosts < ActiveRecord::Migration
  def change
    create_table    :posts do |t|
      t.integer     :user_id
      t.string      :name
      t.datetime    :date
      t.string      :source_url
      t.integer     :rating
      #t.belongs_to     :user identique
    end
  end
end