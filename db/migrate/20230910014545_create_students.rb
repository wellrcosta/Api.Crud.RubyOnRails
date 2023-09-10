class CreateStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :name
      t.string :cpf
      t.string :email

      t.timestamps
    end
  end
end
