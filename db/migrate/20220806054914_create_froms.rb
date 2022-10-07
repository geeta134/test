class CreateFroms < ActiveRecord::Migration[6.1]
  def change
    create_table :froms do |t|
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :mobile_no

      t.timestamps
    end
  end
end
