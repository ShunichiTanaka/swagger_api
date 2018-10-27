class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name, null: false, comment: '氏名'
      t.integer :age, null: false, comment: '年齢'
      t.date :birthday, null: false, comment: '生年月日'
      t.string :email, null: false, comment: 'メールアドレス'

      t.timestamps
    end
  end
end
