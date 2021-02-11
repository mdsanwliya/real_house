
# Real House  

> Application manage real estate that several types of assets, we have
> display them.

  
  
 #### Ruby version
 -2.6.6  
#### System Dependencies Installation  
- `sudo apt install redis-server`
- `sudo systemctl restart redis.service`
  
#### General Installation workflow  
- use ruby-2.6.6  
- `bundle install`  
- `bundle exec rake db:create db:migrate`
  
#### For running the application  
> First we need to run Sidekiq  
- `bundle exec sidekiq`  
  
> Then launch the server  on other terminal/terminal tab
`rails server` 
