class PostgresRecord::Base < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :postgres
end

class Rol < ActiveRecord::Base
  attr_accessible :name
  has_many :users
end
