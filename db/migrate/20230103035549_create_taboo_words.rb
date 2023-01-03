class CreateTabooWords < ActiveRecord::Migration[7.0]
  def change
    create_table :taboo_words do |t|
      t.string :main_word
      t.string :secondary_word1
      t.string :secondary_word2
      t.string :secondary_word3
      t.string :secondary_word4
      t.string :secondary_word5

      t.timestamps
    end
  end
end
