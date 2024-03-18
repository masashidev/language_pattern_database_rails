class CreateFirstWords < ActiveRecord::Migration[7.1]
  def change
    create_table :first_words do |t|
      t.string :word
      t.string :language
      t.string :firstCharacter

      t.timestamps
    end
  end
end
