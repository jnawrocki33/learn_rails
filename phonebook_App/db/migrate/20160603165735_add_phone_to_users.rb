class AddPhoneToUsers < ActiveRecord::Migration
  def change
    add_column :users, :number, :Fixnum
  end
end
