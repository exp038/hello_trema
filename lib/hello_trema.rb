# Hello World!
class HelloTrema < Trema::Controller
  def start(_args)
    @switches = []
    logger.info "Hi! #{self.class}"
  end

  def switch_ready(dpid)
    @switches << dpid.to_hex
    logger.info "Hello #{dpid.to_hex}!"
  end

  def switch_disconnected(dpid)
    @switches -= [dpid.to_hex]
    logger.info "Bye #{dpid.to_hex}"
  end
end
