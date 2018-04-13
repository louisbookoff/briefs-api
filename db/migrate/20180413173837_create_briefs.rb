class CreateBriefs < ActiveRecord::Migration[5.1]
  def change
    create_table :briefs do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :subject
      t.string :body_text
      t.datetime :created_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
