require 'stripe'
require 'dotenv/load'

Stripe.api_key = ENV.fetch("STRIPE_SECRET_KEY")

charge = Stripe::Charge.create({
    amount: 2000,
    currency: "aud",
    source: "tok_amex",
    description: "Charge for jpleyblejr@gmail.com"
})

puts "#{charge.id}"