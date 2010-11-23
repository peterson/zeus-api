require 'CatalogRule.rb'

require 'rubygems'
gem 'soap4r'

require 'soap/mapping'

module CatalogRuleMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsC_10 = "http://soap.zeus.com/zxtm/1.0/"

  EncodedRegistry.register(
    :class => CatalogRuleRuleInfo,
    :schema_type => XSD::QName.new(NsC_10, "Catalog.Rule.RuleInfo"),
    :schema_element => [
      ["rule_text", ["SOAP::SOAPString", XSD::QName.new(nil, "rule_text")]],
      ["rule_notes", ["SOAP::SOAPString", XSD::QName.new(nil, "rule_notes")]]
    ]
  )

  EncodedRegistry.set(
    CatalogRuleRuleInfoArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "Catalog.Rule.RuleInfo") }
  )

  EncodedRegistry.register(
    :class => CatalogRuleSyntaxCheck,
    :schema_type => XSD::QName.new(NsC_10, "Catalog.Rule.SyntaxCheck"),
    :schema_element => [
      ["valid", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "valid")]],
      ["warnings", ["SOAP::SOAPString", XSD::QName.new(nil, "warnings")]],
      ["errors", ["SOAP::SOAPString", XSD::QName.new(nil, "errors")]]
    ]
  )

  EncodedRegistry.set(
    CatalogRuleSyntaxCheckArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "Catalog.Rule.SyntaxCheck") }
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

  LiteralRegistry.register(
    :class => CatalogRuleRuleInfo,
    :schema_type => XSD::QName.new(NsC_10, "Catalog.Rule.RuleInfo"),
    :schema_element => [
      ["rule_text", ["SOAP::SOAPString", XSD::QName.new(nil, "rule_text")]],
      ["rule_notes", ["SOAP::SOAPString", XSD::QName.new(nil, "rule_notes")]]
    ]
  )

  LiteralRegistry.register(
    :class => CatalogRuleSyntaxCheck,
    :schema_type => XSD::QName.new(NsC_10, "Catalog.Rule.SyntaxCheck"),
    :schema_element => [
      ["valid", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "valid")]],
      ["warnings", ["SOAP::SOAPString", XSD::QName.new(nil, "warnings")]],
      ["errors", ["SOAP::SOAPString", XSD::QName.new(nil, "errors")]]
    ]
  )

end
