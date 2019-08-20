require 'pry'

class Application
 
  def call(env)
    resp = Rack::Response.new
 
  timeNow = Time.now
  resp.write "Time Now #{timeNow}"
binding.pry
   if timeNow<12 
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end
 
    resp.finish
  end
 
end