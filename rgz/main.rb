require 'webrick'
require_relative "Infrastructure/CashMachineServlet"
require_relative "Entities/CashMachine"

server = WEBrick::HTTPServer.new(:Port => 8000)
atmObj = CashMachine.new(500)
server.mount "/", CashMachineServlet, atmObj

trap('INT') { server.shutdown }
server.start