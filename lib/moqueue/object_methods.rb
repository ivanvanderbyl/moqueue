module Moqueue
  
  module ObjectMethods
    def mock_queue_and_exchange(name=nil)
      queue = mock_queue(name)
      exchange = mock_exchange
      exchange.attached_queues << queue
      [queue, exchange]
    end

    def mock_queue(name=nil)
      MockQueue.new(name || "anonymous")
    end
    
    def mock_exchange
      MockExchange.new
    end
    
    def overload_amqp
      require MOQUEUE_ROOT + "moqueue/overloads"
    end
    
    def reset_broker
      MockBroker.instance.reset!
    end
    
  end
  
end

Object.send(:include, Moqueue::ObjectMethods)