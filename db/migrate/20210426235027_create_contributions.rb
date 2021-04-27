class CreateContributions < ActiveRecord::Migration[6.1]
  def change
    create_table :contributions do |t|
      t.string :contribution_period
      t.date :contribution_date
      t.float :amount
      t.string :fd_status
      t.string :eq_status
      t.date :fd_redemption_date
      t.date :eq_redemption_date
      t.float :interest_accrued
      t.string :flag, default: 'Active'
      t.float :last_interest
      t.boolean :status, default: true
      t.integer :approved_by
      t.datetime :approved_at
      t.integer :created_by
      t.integer :updated_by
      t.belongs_to :customer, foreign_key: true
      t.timestamps
    end
  end
end
