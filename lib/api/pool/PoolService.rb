require "PoolDriver.rb"
require "Pool.rb"

#
# PoolService
#
# This class provides a facade for SOAP method calls to the
# ZXTM Pool web service.
class PoolService
  
  attr_accessor :driver
  
  def initialize(endpoint=nil, username=nil, password=nil)
    @driver = PoolPort.new(endpoint)
    @driver.options["protocol.http.ssl_config.verify_mode"] = OpenSSL::SSL::VERIFY_NONE
    @driver.options["protocol.http.basic_auth"] << [endpoint, username, password]
  end

  # Returns pool names
  #
  # Args
  #   N/A
  #
  # Examples
  #   names()   - Returns all pool names
  #
  def names()
    result = []
    pools = @driver.getPoolNames
    pools.length.times do |i|
      result << pools[i]
    end
    return result
  end

  # Creates new pool
  #
  # Args
  #   name (String)          - Pool's name
  #   vs_info (Array)        - Pool's nodes
  #
  # Examples
  #   create("web-pool", ["10.0.0.2", "10.0.0.3"])  - Creates new pool called "web-pool" with 2 nodes
  #
  def create(name=nil, nodes=[])
    @driver.addPool([name], [nodes])
  end

end