class AddTitleToMessages < ActiveRecord::Migration[5.1]
  def change
    add_column :messages, :title, :string
    add_column :messages, :text, :text
  end
end
