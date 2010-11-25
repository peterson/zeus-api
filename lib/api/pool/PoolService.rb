
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

  # Returns a list of pool names
  #
  # Args
  #   N/A
  #
  # Examples
  #   list()   - Returns all pool names
  #
  def list()
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
  
  # Copies a pool
  #
  # Args
  #   name (String)       - Name of current pool
  #   new_name (String)   - Name of new pool
  #
  # Examples
  #   copy(name, new_name)  - Copies pool called "name" to a new pool, called "new_name"
  #  
  def copy(name, new_name)
    @driver.copyPool([name], [new_name])
  end

  # Renames a pool
  #
  # Args
  #   name (String)       - Current name of pool
  #   new_name (String)   - New name of pool
  #
  # Examples
  #   rename(name, new_name)  - Renames pool "name" to "new_name"
  #  
  def rename(name, new_name)
    @driver.renamePool([name], [new_name])
  end

  # Deletes a pool
  #
  # Args
  #   name (String)       - Name of pool
  #
  # Examples
  #   delete(name)        - Deletes pool called "name"
  #  
  def delete(name)
    @driver.deletePool([name])
  end
    
  # Sets or return failure pool for pool
  #
  # Args
  #   name (String)     - Pool name
  #   nodes (Array)     - Nodes (["host1:port", "host2:port"])
  #
  # Examples
  #   failure_pool("test", "failure_pool")
  #   failure_pool("test") - Returns 
  #    
  def failure_pool(name, failure_name=nil)
    if failure_name.nil?
      @driver.getFailurePool([name])
    else
      @driver.setFailurePool([name],[failure_name])
    end
  end

  
  # Returns a list of nodes within a pool
  #
  # Args
  #   name (String)     - Pool name
  #
  # Examples
  #   list_nodes(name)   - Returns nodes for pool "name"
  #
  def list_nodes(name, status=nil)
    result = []
    valid_status = [:all, :draining]
    status = :all if status.nil? or !valid_status.include?(status)
    
    case status
    when :all
      result = @driver.getNodes([name])
    when :draining
      result = @driver.getDrainingNodes([name])
    end

    return result
    
  end
  
  # Adds a node to a pool
  #
  # Args
  #   name (String)     - Pool name
  #   node (String)     - Node ("host:port")
  #
  # Examples
  #   add_node("pool", "host:80") - Returns nodes for pool "name"
  #
  def add_node(name, node)
    @driver.addNodes([name], [[node]])
  end

  # Adds nodes to a pool
  #
  # Args
  #   name (String)     - Pool name
  #   nodes (Array)     - Nodes (["host1:port", "host2:port"])
  #
  # Examples
  #   add_nodes("pool",["host1:80", "host2:80"])
  #  
  def add_nodes(name, nodes)
    @driver.addNodes([name], [nodes])
  end

  # Removes a node from a pool
  #
  # Args
  #   name (String)     - Pool name
  #   node (String)     - Node ("host:port")
  #
  # Examples
  #   remove_node("pool", "host:80")
  #
  def remove_node(name, node)
    @driver.removeNodes([name], [[node]])
  end

  # Removes nodes to a pool
  #
  # Args
  #   name (String)     - Pool name
  #   nodes (Array)     - Nodes (["host1:port", "host2:port"])
  #
  # Examples
  #   remove_nodes("pool",["host1:80", "host2:80"])
  #  
  def remove_nodes(name, nodes)
    @driver.removeNodes([name], [nodes])
  end

  # Mark a node as draining
  #
  # Args
  #   name (String)     - Pool name
  #   node (String)     - Node ("host:port")
  #
  # Examples
  #   add_draining_node("pool", "host:80")
  #
  def drain_node(name, node)
    @driver.addDrainingNodes([name], [[node]])
  end

  # Mark nodes as draining
  #
  # Args
  #   name (String)     - Pool name
  #   nodes (Array)     - Nodes (["host1:port", "host2:port"])
  #
  # Examples
  #   add_draining_nodes("pool",["host1:80", "host2:80"])
  #  
  def drain_nodes(name, nodes)
    @driver.addDrainingNodes([name], [nodes])
  end

  # Mark a draining node as active
  #
  # Args
  #   name (String)     - Pool name
  #   node (String)     - Node ("host:port")
  #
  # Examples
  #   undrain_node("pool", "host:80")
  #
  def undrain_node(name, node)
    @driver.removeDrainingNodes([name], [[node]])
  end

  # Mark draining nodes as active
  #
  # Args
  #   name (String)     - Pool name
  #   nodes (Array)     - Nodes (["host1:port", "host2:port"])
  #
  # Examples
  #   undrain_nodes("pool",["host1:80", "host2:80"])
  #  
  def undrain_nodes(name, nodes)
    @driver.removeDrainingNodes([name], [nodes])
  end
  
  # Return current connection count for node
  #
  # Args
  #   name (String)     - Pool name
  #   nodes (Array)     - Nodes (["host1:port", "host2:port"])
  #
  # Examples
  #   remove_draining_nodes("pool",["host1:80", "host2:80"])
  #    
  def connection_count(node)
    @driver.getNodesConnectionCounts([node])
  end

end