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




get '/' do
  erb :index
end




























