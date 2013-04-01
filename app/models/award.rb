class PostgresRecord::Base < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :postgres
end

class Award < ActiveRecord::Base
  attr_accessible :name, :order
end
