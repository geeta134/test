class AddNumberToFroms < ActiveRecord::Migration[6.1]
  def change
    add_column :froms, :number, :string
  end
end
