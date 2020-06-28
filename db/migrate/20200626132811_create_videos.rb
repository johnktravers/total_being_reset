class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string  :title
      t.text    :description
      t.string  :thumbnail
      t.string  :youtube_id
      t.integer :type

      t.timestamps
    end
  end
end
