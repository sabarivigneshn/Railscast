class CreateEpisodeTypes < ActiveRecord::Migration
  def change
    create_table :episode_types do |t|
      t.string :name
      t.text :notes
      t.timestamps
    end
  end
end
