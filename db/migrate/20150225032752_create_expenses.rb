class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :fecha
      t.text :concept
      t.decimal :amount
      t.references :category, index: true

      t.timestamps null: false
    end
    add_foreign_key :expenses, :categories
  end
end
