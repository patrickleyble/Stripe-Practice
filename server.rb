require 'webrick'
require 'stripe'
require 'dotenv/load'

Stripe.api_key = ENV.fetch("STRIPE_SECRET_KEY")

class Router < WEBrick::HTTPServlet::AbstractServlet
    def do_GET(request, respond)
        case request.path
    end
end
