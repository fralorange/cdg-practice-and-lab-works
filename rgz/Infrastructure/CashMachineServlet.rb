require "webrick"
require_relative "../Entities/CashMachine"

class CashMachineServlet < WEBrick::HTTPServlet::AbstractServlet
    def initialize (server, cmObj)
        @cmObj = cmObj
        super(server)
    end
    
    def do_GET (request, response)
        result = ""
        if request.query["value"]
            amount = request.query["value"]
            response.status = 200
            response.content_type = "text/plain"

            case request.path
                when "/deposit"
                    result = @cmObj.deposit(amount)
                when "/withdraw"
                    result = @cmObj.withdraw(amount)
            end
        else
            case request.path
                when "/balance"
                    result = @cmObj.balance()
            end
        end
        response.body = result.to_s + "\n"
    end
end 