class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :name
      t.text :about
      t.string :image
      t.string :video
      t.string :duration
      t.string :release_date
      t.belongs_to :category, index: true
      t.belongs_to :episode_type, index: true
      t.timestamps
    end
  end
end
