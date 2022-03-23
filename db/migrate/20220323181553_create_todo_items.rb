class CreateTodoItems < ActiveRecord::Migration[6.0]
  def change
    create_table :todo_items do |t|
      t.text :descricao
      t.boolean :completo
      t.datetime :completo_em
      t.references :todo_list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
