class Application
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if reg.path.match(/items/)
      resp.write Item.name
    else
      resp.write "Route not found"
      resp.status = 404
    end
  end
end
