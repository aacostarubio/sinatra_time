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


 def initialize
   @letter_from_month = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sept", "Sep", "Oct", "Nov", "Dec"]
   @word_from_month = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

 end

 def date_format(input)

  abreviacion_del_mes = "time.strftime" + "('%b" + " %-d" + " %Y')"
  complete_word = "time.strftime" + "('%B" + " %-d" + " %Y')"
  year_complete = ["time.strftime" + "('%Y " + "%-d" + " %-m')",
                   "time.strftime" + "('%Y " + "%-m" + " %-d')"]

  new_time = input
  new_time.capitalize!

  return abreviacion_del_mes if (@letter_from_month.include? new_time.split[0])
  return complete_word if (@word_from_month.include? new_time.split[0])
  return year_complete[0] if (new_time.split[0].length == 4) && (new_time.split[1].to_i > 12)
  return year_complete[1] if (new_time.split[0].length == 4) && (new_time.split[1].to_i <= 12)

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
