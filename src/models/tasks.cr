class Tasks < Granite::ORM::Base
  adapter pg
  table_name tasks


  # id : Int64 primary key is created for you
  field name : String
  timestamps
end
