require 'rubygems'
require 'sinatra'
require 'sinatra/assetpack'


register Sinatra::AssetPack


assets do

  js :main, '/js/main.js', [
  '/js/vendor/jquery*.js',
  '/js/vendor/bootstrap-transition.js',
  '/js/vendor/bootstrap-alert.js',
  '/js/vendor/bootstrap-button.js',
  #'/js/vendor/bootstrap-carousel.js',
  '/js/vendor/bootstrap-collapse.js',
  '/js/vendor/bootstrap-dropdown.js',
  #'/js/vendor/bootstrap-modal.js', 
  #'/js/vendor/bootstrap-tooltip.js',
  #'/js/vendor/bootstrap-popover.js', 
  #'/js/vendor/bootstrap-scrollspy.js', 
  #'/js/vendor/bootstrap-tab.js',
  #'/js/vendor/bootstrap-typeahead.js', 
  #'/js/vendor/bootstrap-affix.js',
  ]

  css :bootstrap, [
    '/css/bootstrap.min.css',
    '/css/style.css'
  ]

  prebuild true

end


 def date_format(input)
  letter_from_month = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Sep", "Oct", "Nov", "Dec"]
  word_from_month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

  new_time = input

  if letter_from_month.include? new_time.split[0]
    return "time.strftime" + "(%b" + " %-d" + " %Y)"
  elsif word_from_month.include? new_time.split[0]
    return "time.strftime" + "(%B" + " %-d" + " %Y)"
  end

 end



get '/' do
  erb :index
end

post '/result' do
  erb:result, :locals => { :date_input => params[:date_input] }
end

get '/bach' do
  erb :bach
end
