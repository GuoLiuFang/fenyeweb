class CreateChargeCodesStatistics < ActiveRecord::Migration
  def change
    create_table :charge_codes_statistics do |t|
      t.integer :charge_code_id
      t.integer :charge_code_amount
      t.string :charge_code_name
      t.string :charge_code_dest_number
      t.string :charge_code_instruc_t
      t.string :charge_code_instruc_no_t
      t.string :yewucode_name
      t.string :union_name

      t.timestamps null: false
    end
  end
end
