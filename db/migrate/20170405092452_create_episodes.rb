class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.string :name
      t.text :about
      t.binary :image
      t.binary :video
      t.time :duration
      t.datetime :release_date
      t.belongs_to :category, index: true
      t.belongs_to :episode_type, index: true
      t.timestamps
    end
  end
end
