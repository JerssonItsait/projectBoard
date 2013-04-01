class PostgresRecord::Base < ActiveRecord::Base
  self.abstract_class = true
  establish_connection :postgres
end

class User < ActiveRecord::Base
  belongs_to :rol
  attr_accessible :email, :name, :password, :roles_id
end
