
require 'rubygems'
gem 'soap4r'

require 'soap/mapping'

module PoolMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsC_10 = "http://soap.zeus.com/zxtm/1.0/"

  EncodedRegistry.set(
    PoolLoadBalancingAlgorithmArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://soap.zeus.com/zxtm/1.0/", "Pool.LoadBalancingAlgorithm") }
  )

  EncodedRegistry.register(
    :class => PoolPriorityValueDefinition,
    :schema_type => XSD::QName.new(NsC_10, "Pool.PriorityValueDefinition"),
    :schema_element => [
      ["node", ["SOAP::SOAPString", XSD::QName.new(nil, "node")]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(nil, "priority")]]
    ]
  )

  EncodedRegistry.set(
    PoolPriorityValueDefinitionArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "Pool.PriorityValueDefinition") }
  )

  EncodedRegistry.set(
    PoolPriorityValueDefinitionArrayArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "Pool.PriorityValueDefinitionArray") }
  )

  EncodedRegistry.register(
    :class => PoolWeightingsDefinition,
    :schema_type => XSD::QName.new(NsC_10, "Pool.WeightingsDefinition"),
    :schema_element => [
      ["node", ["SOAP::SOAPString", XSD::QName.new(nil, "node")]],
      ["weighting", ["SOAP::SOAPInt", XSD::QName.new(nil, "weighting")]]
    ]
  )

  EncodedRegistry.set(
    PoolWeightingsDefinitionArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "Pool.WeightingsDefinition") }
  )

  EncodedRegistry.set(
    PoolWeightingsDefinitionArrayArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "Pool.WeightingsDefinitionArray") }
  )

  EncodedRegistry.set(
    StringArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "string") }
  )

  EncodedRegistry.set(
    StringArrayArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "StringArray") }
  )

  EncodedRegistry.set(
    BooleanArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "boolean") }
  )

  EncodedRegistry.set(
    BooleanArrayArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "booleanArray") }
  )

  EncodedRegistry.set(
    IntArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "int") }
  )

  EncodedRegistry.set(
    UnsignedIntArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new("http://www.w3.org/2001/XMLSchema", "unsignedInt") }
  )

  EncodedRegistry.register(
    :class => PoolLoadBalancingAlgorithm,
    :schema_type => XSD::QName.new(NsC_10, "Pool.LoadBalancingAlgorithm")
  )

  LiteralRegistry.register(
    :class => PoolPriorityValueDefinition,
    :schema_type => XSD::QName.new(NsC_10, "Pool.PriorityValueDefinition"),
    :schema_element => [
      ["node", ["SOAP::SOAPString", XSD::QName.new(nil, "node")]],
      ["priority", ["SOAP::SOAPInt", XSD::QName.new(nil, "priority")]]
    ]
  )

  LiteralRegistry.register(
    :class => PoolWeightingsDefinition,
    :schema_type => XSD::QName.new(NsC_10, "Pool.WeightingsDefinition"),
    :schema_element => [
      ["node", ["SOAP::SOAPString", XSD::QName.new(nil, "node")]],
      ["weighting", ["SOAP::SOAPInt", XSD::QName.new(nil, "weighting")]]
    ]
  )

  LiteralRegistry.register(
    :class => PoolLoadBalancingAlgorithm,
    :schema_type => XSD::QName.new(NsC_10, "Pool.LoadBalancingAlgorithm")
  )
end
