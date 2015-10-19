class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.column :user, :string
      t.column :text, :string
      t.column :question_id, :integer

      t.timestamps
    end
  end
end
