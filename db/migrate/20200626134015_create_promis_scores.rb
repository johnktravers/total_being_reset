class CreatePromisScores < ActiveRecord::Migration[6.0]
  def change
    create_table :promis_scores do |t|
      t.float      :global_physical
      t.float      :global_mental
      t.integer    :general_health
      t.integer    :social
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
