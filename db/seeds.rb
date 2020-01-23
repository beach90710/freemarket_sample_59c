require "csv"
CSV.foreach('db/categories.csv',headers: true) do |row|
  Category.create!(
    name: row['name'],
    parent_id: row['parent_id'],
    created_at: row['created_at'],
    updated_at: row['updated_at'],
  )
end