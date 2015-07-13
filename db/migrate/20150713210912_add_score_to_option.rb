class AddScoreToOption < ActiveRecord::Migration
  def change
    add_column(:options, :score, :integer, default: 0)
  end
end
