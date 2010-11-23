require 'xsd/qname'

# {http://soap.zeus.com/zxtm/1.0/}Pool.PriorityValueDefinition
#   node - SOAP::SOAPString
#   priority - SOAP::SOAPInt
class PoolPriorityValueDefinition
  attr_accessor :node
  attr_accessor :priority

  def initialize(node = nil, priority = nil)
    @node = node
    @priority = priority
  end
end

# {http://soap.zeus.com/zxtm/1.0/}Pool.WeightingsDefinition
#   node - SOAP::SOAPString
#   weighting - SOAP::SOAPInt
class PoolWeightingsDefinition
  attr_accessor :node
  attr_accessor :weighting

  def initialize(node = nil, weighting = nil)
    @node = node
    @weighting = weighting
  end
end

# {http://soap.zeus.com/zxtm/1.0/}Pool.LoadBalancingAlgorithmArray
class PoolLoadBalancingAlgorithmArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}Pool.PriorityValueDefinitionArray
class PoolPriorityValueDefinitionArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}Pool.PriorityValueDefinitionArrayArray
class PoolPriorityValueDefinitionArrayArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}Pool.WeightingsDefinitionArray
class PoolWeightingsDefinitionArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}Pool.WeightingsDefinitionArrayArray
class PoolWeightingsDefinitionArrayArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}StringArray
class StringArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
class StringArrayArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}booleanArray
class BooleanArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}booleanArrayArray
class BooleanArrayArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}intArray
class IntArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
class UnsignedIntArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}Pool.LoadBalancingAlgorithm
class PoolLoadBalancingAlgorithm < ::String
  Cells = PoolLoadBalancingAlgorithm.new("cells")
  Connections = PoolLoadBalancingAlgorithm.new("connections")
  Random = PoolLoadBalancingAlgorithm.new("random")
  Responsetimes = PoolLoadBalancingAlgorithm.new("responsetimes")
  Roundrobin = PoolLoadBalancingAlgorithm.new("roundrobin")
  Wconnections = PoolLoadBalancingAlgorithm.new("wconnections")
  Wroundrobin = PoolLoadBalancingAlgorithm.new("wroundrobin")
end
