mv app/views/layouts/application.html.erb app/views/layouts/application.html.haml
mv app/assets/stylesheets/application.css app/assets/stylesheets/application.css.scss

RAILS_ENV=production bundle exec rake assets:precompile