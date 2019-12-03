class CreateTenants < ActiveRecord::Migration[5.2]
  def change
    create_table :tenants do |t|
      t.string :tenant_name
      t.string :tenant_phone
      t.integer :tenant_deposit
      t.integer :tenant_rentfee
      t.integer :tenant_mtnfee
      t.string :tenant_gender
      t.date :tenant_startdate
      t.date :tenant_enddate
      t.text :tenant_period
      t.text :tenant_memo
      t.string :tenant_present
      t.references :room, foreign_key: true

      t.timestamps
    end 
  end
end
