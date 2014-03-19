require 'rubygems'
require 'sinatra'
require 'builder'

## Wire up the paths
# Dir[File.dirname(__FILE__) + '/vendor/*/lib'].each { |d| $:.unshift d }
# $:.unshift File.dirname(__FILE__) + '/lib'

set :root, File.dirname(__FILE__)

configure do
  @@url = "http://irinabrown.com"
end


["/", "/index"].each do |path|
  get path do
    response.headers['Cache-Control'] = "public, max-age=86400"
    erb :index
  end
end

get "/lifestyle.html" do
  response.headers['Cache-Control'] = "public, max-age=86400"
  erb :lifestyle
end

get "/photography.html" do
  response.headers['Cache-Control'] = "public, max-age=86400"
  erb :photography
end

not_found do
  response.headers['Cache-Control'] = "public, max-age=86400"
  erb :index
end

get "/sitemap.xml" do
  response.headers['Cache-Control'] = "public, max-age=86400"
  content_type 'application/xml', :charset => 'utf-8'
  @url = @@url
  builder :sitemap
end
