class Application

  def call(env)
    resp = Rack::Response.new

    t = Time.now
    t.hour

    resp.write "Good Morning!" if t.hour <= 12
    resp.write "Good Afternoon!" if t.hour > 12

    resp.finish

  end

end
