class RemoveasswordDigestFromusers < ActiveRecord::Migration
  def up
  	remove_column :User, :assword_digest
  end

  def down
  end
end
