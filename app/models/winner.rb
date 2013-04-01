class PostgresRecord::Base < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :postgres
end

class Winner < ActiveRecord::Base
  attr_accessible :dategame, :namemember, :nameteam, :score
end
