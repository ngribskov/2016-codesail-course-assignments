require 'sinatra'
get '/' do
  @first_name = "niels"
  @last_name = "gribskov"
  @interests = ['league of legends','singing','underwater basket weaving','cooking']
  @name_of_hometown = "San Diego, CA"
  erb :about_me
end

get '/hometown' do
  @name_of_hometown = "Brooklyn, NY"
  @time_lived = "9 years"
  @born = false
  erb :about_my_hometown
end

get '/06_07_2016' do
  @date = "6/7/2016"
  @timestamp = "3:26 pm EST"
  @name_of_hometown = "San Diego, CA"
  @post_title = "TIL"
  erb :blog_post_06_07_2016
end
