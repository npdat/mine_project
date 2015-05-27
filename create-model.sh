#rails g scaffold country iso_code:string name:string

#rails g migration CreateUsers username:string is_admin: bool

#rails g migration change_data_type_for_fieldname

#bin/rake db:rollback

#sudo -u postgres -i

#rails new mine_project

#rails generate controller users

# bash create-model.sh

#bin/rake db:migrate RAILS_ENV=development
--------------
#Inter1 -> first design
rails d scaffold users
rails d scaffold private_messages
rails d scaffold reports
rails d scaffold uploads

rails g scaffold users username:string password:string address:string phone:string email:string is_admin:string
rails g scaffold private_messages content:text user_id:integer report_id:integer
rails g scaffold reports report_name:string path:string user_id:integer
rails g scaffold uploads pdf_file_name:string pdf_content_type:string pdf_file_size:integer pdf_updated_at:datetime

bin/rake db:migrate RAILS_ENV=development


