class CreateMicropsots < ActiveRecord::Migration[5.1]
  def change
    create_table :micropsots do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
