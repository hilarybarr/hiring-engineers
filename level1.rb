require 'rubygems'
require 'dogapi'

api_key=ENV["DATADOG_API_KEY"]
app_key=ENV["DATADOG_APP_KEY"]


# SEND AN EVENT
dog = Dogapi::Client.new(api_key, app_key)

dog.emit_event(Dogapi::Event.new('Hilary successfully submitted an event! Booya :-)'), :host => "my_host")


#SEND AN EVENT TO EMAIL

dog.emit_event(Dogapi::Event.new('@hilarybarr@aya.yale.edu - sending email works', :msg_title => 'Test1'))


#Send email invite
# dog.invite(["hilarybarr@aya.yale.edu"])