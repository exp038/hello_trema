# Hello World!
class HelloTrema < Trema::Controller
  def start(_args)
    logger.info "Hi! #{self.class}"
  end

  def switch_ready(dpid)
    logger.info "Hello #{dpid.to_hex}!"
  end

  def switch_disconnected(dpid)
    logger.info "Bye #{dpid.to_hex}"
  end
end
