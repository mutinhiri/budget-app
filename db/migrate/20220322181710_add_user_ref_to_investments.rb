class AddUserRefToInvestments < ActiveRecord::Migration[7.0]
  def change
    add_reference :investments, :user, foreign_key: true
  end
end