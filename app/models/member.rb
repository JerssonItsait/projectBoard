class PostgresRecord::Base < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :postgres
end

class Member < ActiveRecord::Base
  belongs_to :team
  attr_accessible :name, :team_id
end
