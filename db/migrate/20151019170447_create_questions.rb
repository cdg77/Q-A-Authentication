class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.column :author, :string
      t.column :title, :string

      t.timestamps
    end
  end
end
