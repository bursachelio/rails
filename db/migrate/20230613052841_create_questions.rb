# frozen_string_literal: true

class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.string :content, null: false
      t.references :test, null: false, foreign_key: true

      t.timestamps
    end
  end
end
