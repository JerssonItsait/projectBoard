class PostgresRecord::Base < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :postgres
end

class Team < ActiveRecord::Base
  attr_accessible :name, :score
  has_many :members
  has_many :results
end
