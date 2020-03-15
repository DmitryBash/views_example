class CreateCalculatingView < ActiveRecord::Migration[6.0]
  def up
    execute <<-SQL
      CREATE VIEW examples as
      SELECT
        users.id as user_id,
        avg(users.numbers) as u_numbers,
        avg(users.other_numbers) as u_other_numbers
      FROM
        users
      GROUP BY
        users.id
    SQL
  end

  def down
    execute <<-SQL
      DROP VIEW examples;
    SQL
  end
end
