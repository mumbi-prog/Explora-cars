# Rack::Attack.throttle('login/email', limit: 3, period: 60.seconds) do |req|
#     if req.path == '/login' && req.post?
#       # req.params['email']
#       req.ip
#     end
#   end
# Rack::Attack.throttle('login/email', limit: 3, period: 60.seconds) do |req|
#   if req.path == '/login' && req.post?
#     # req.params['email']
#     req.ip
#   end
# end
#   Rack::Attack.throttle("requests by ip", limit: 10, period: 1.minutes) do |request|
#     request.ip unless request.get?
#   end
#   Rack::Attack.throttle("requests by ip", limit: 20, period: 1.minutes) do |request|
#     request.ip
#   end
  
  # Rack::Attack.throttle("logins/email", :limit => 3, :period => 60.seconds) do |req|
  #   if req.path == '/login' && req.post?
  #     # return the email if present, nil otherwise
  #     req.params['email'].presence
  #   end
  # end

  # Rack::Attack.blocklisted_response = lambda do |env|
  #   Rack::Response.new(
  #     status: 429,
  #     headers: { "Content-Type" => "application/json" },
  #     body: { errors: ["Too many attempts, try again later."] }.to_json
  #   )
  # end
  Rack::Attack.throttled_responder = lambda do |env|
    status_code = 429
    headers = {
      'Content-Type' => 'application/json',
      'Retry-After' => '60' # You can set the retry time here (in seconds)
    }
    body = 'Too many attempts, try again later'
    [status_code, headers, [body]]
  end