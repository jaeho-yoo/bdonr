class CreateTenants < ActiveRecord::Migration[5.2]
  def change
    create_table :tenants do |t|
      t.string :tenant_name
      t.string :tenant_phone
      t.string :tenant_deposit
      t.string :tenant_rentfee
      t.string :tenant_mtnfee
      t.string :tenant_gender
      t.string :tenant_startdate
      t.string :tenant_enddate
      t.string :tenant_period
      t.string :tenant_memo
      t.string :tenant_present
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
