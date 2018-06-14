require_relative("../db/sql_runner.rb")

class House
  attr_reader :name, :logo_url, :id

  def initialize(options)
    @name = options['name']
    @logo_url = options['logo_url']
    @id = options['id']
  end

  def save()
    sql = "INSERT INTO houses
    (
      name,
      logo_url
      )
      VALUES (
        $1, $2
        ) RETURNING *"
    values = [@name, @logo_url]
    house_data = SqlRunner.run(sql, values)
    @id = house_data.first['id'].to_i()
  end

  def self.find_all
    sql = "SELECT * FROM houses"
    return SqlRunner.run(sql).map { |house| House.new(house)  }
  end

  def self.delete_all()
    sql = "DELETE FROM houses"
    SqlRunner.run(sql)
  end

  def find_by_id(id)
    sql = "SELECT * FROM houses WHERE id =$1"
    values = [id]
    house_data = SqlRunner.run(sql,values)
    return house_data.first()
  end


end
