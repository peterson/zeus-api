require 'VirtualServer.rb'

require 'rubygems'
gem 'soap4r'

require 'soap/mapping'

module VirtualServerMappingRegistry
  EncodedRegistry = ::SOAP::Mapping::EncodedRegistry.new
  LiteralRegistry = ::SOAP::Mapping::LiteralRegistry.new
  NsC_10 = "http://soap.zeus.com/zxtm/1.0/"

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
    { :type => XSD::QName.new("http://soap.zeus.com/zxtm/1.0/", "StringArray") }
  )

  EncodedRegistry.register(
    :class => VirtualServerBasicInfo,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.BasicInfo"),
    :schema_element => [
      ["port", ["SOAP::SOAPInt", XSD::QName.new(nil, "port")]],
      ["protocol", ["VirtualServerProtocol", XSD::QName.new(nil, "protocol")]],
      ["default_pool", ["SOAP::SOAPString", XSD::QName.new(nil, "default_pool")]]
    ]
  )

  EncodedRegistry.set(
    VirtualServerBasicInfoArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.BasicInfo") }
  )

  EncodedRegistry.set(
    VirtualServerCookieDomainRewriteModeArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.CookieDomainRewriteMode") }
  )

  EncodedRegistry.set(
    VirtualServerCookieSecureFlagRewriteModeArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.CookieSecureFlagRewriteMode") }
  )

  EncodedRegistry.register(
    :class => VirtualServerFTPPortRange,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.FTPPortRange"),
    :schema_element => [
      ["low", ["SOAP::SOAPInt", XSD::QName.new(nil, "low")]],
      ["high", ["SOAP::SOAPInt", XSD::QName.new(nil, "high")]]
    ]
  )

  EncodedRegistry.set(
    VirtualServerFTPPortRangeArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.FTPPortRange") }
  )

  EncodedRegistry.set(
    VirtualServerLocationDefaultRewriteModeArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.LocationDefaultRewriteMode") }
  )

  EncodedRegistry.register(
    :class => VirtualServerPortRange,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.PortRange"),
    :schema_element => [
      ["low", ["SOAP::SOAPInt", XSD::QName.new(nil, "low")]],
      ["high", ["SOAP::SOAPInt", XSD::QName.new(nil, "high")]]
    ]
  )

  EncodedRegistry.set(
    VirtualServerPortRangeArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.PortRange") }
  )

  EncodedRegistry.set(
    VirtualServerProtocolArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.Protocol") }
  )

  EncodedRegistry.register(
    :class => VirtualServerRegexReplacement,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.RegexReplacement"),
    :schema_element => [
      ["regex", ["SOAP::SOAPString", XSD::QName.new(nil, "regex")]],
      ["replacement", ["SOAP::SOAPString", XSD::QName.new(nil, "replacement")]]
    ]
  )

  EncodedRegistry.set(
    VirtualServerRegexReplacementArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.RegexReplacement") }
  )

  EncodedRegistry.register(
    :class => VirtualServerRule,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.Rule"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["enabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "enabled")]],
      ["run_frequency", ["VirtualServerRuleRunFlag", XSD::QName.new(nil, "run_frequency")]]
    ]
  )

  EncodedRegistry.set(
    VirtualServerRuleArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.Rule") }
  )

  EncodedRegistry.set(
    VirtualServerRuleArrayArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.RuleArray") }
  )

  EncodedRegistry.set(
    VirtualServerSIPDangerousRequestModeArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.SIPDangerousRequestMode") }
  )

  EncodedRegistry.set(
    VirtualServerSIPModeArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.SIPMode") }
  )

  EncodedRegistry.set(
    VirtualServerSSLClientCertificateHeadersArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.SSLClientCertificateHeaders") }
  )

  EncodedRegistry.set(
    VirtualServerSSLRequestClientCertModeArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.SSLRequestClientCertMode") }
  )

  EncodedRegistry.register(
    :class => VirtualServerSSLSite,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.SSLSite"),
    :schema_element => [
      ["dest_address", ["SOAP::SOAPString", XSD::QName.new(nil, "dest_address")]],
      ["certificate", ["SOAP::SOAPString", XSD::QName.new(nil, "certificate")]]
    ]
  )

  EncodedRegistry.set(
    VirtualServerSSLSiteArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.SSLSite") }
  )

  EncodedRegistry.set(
    VirtualServerSSLSiteArrayArray,
    ::SOAP::SOAPArray,
    ::SOAP::Mapping::EncodedRegistry::TypedArrayFactory,
    { :type => XSD::QName.new(NsC_10, "VirtualServer.SSLSiteArray") }
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
    :class => VirtualServerCookieDomainRewriteMode,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.CookieDomainRewriteMode")
  )

  EncodedRegistry.register(
    :class => VirtualServerCookieSecureFlagRewriteMode,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.CookieSecureFlagRewriteMode")
  )

  EncodedRegistry.register(
    :class => VirtualServerLocationDefaultRewriteMode,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.LocationDefaultRewriteMode")
  )

  EncodedRegistry.register(
    :class => VirtualServerProtocol,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.Protocol")
  )

  EncodedRegistry.register(
    :class => VirtualServerRuleRunFlag,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.RuleRunFlag")
  )

  EncodedRegistry.register(
    :class => VirtualServerSIPDangerousRequestMode,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.SIPDangerousRequestMode")
  )

  EncodedRegistry.register(
    :class => VirtualServerSIPMode,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.SIPMode")
  )

  EncodedRegistry.register(
    :class => VirtualServerSSLClientCertificateHeaders,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.SSLClientCertificateHeaders")
  )

  EncodedRegistry.register(
    :class => VirtualServerSSLRequestClientCertMode,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.SSLRequestClientCertMode")
  )

  LiteralRegistry.register(
    :class => VirtualServerBasicInfo,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.BasicInfo"),
    :schema_element => [
      ["port", ["SOAP::SOAPInt", XSD::QName.new(nil, "port")]],
      ["protocol", ["VirtualServerProtocol", XSD::QName.new(nil, "protocol")]],
      ["default_pool", ["SOAP::SOAPString", XSD::QName.new(nil, "default_pool")]]
    ]
  )

  LiteralRegistry.register(
    :class => VirtualServerFTPPortRange,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.FTPPortRange"),
    :schema_element => [
      ["low", ["SOAP::SOAPInt", XSD::QName.new(nil, "low")]],
      ["high", ["SOAP::SOAPInt", XSD::QName.new(nil, "high")]]
    ]
  )

  LiteralRegistry.register(
    :class => VirtualServerPortRange,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.PortRange"),
    :schema_element => [
      ["low", ["SOAP::SOAPInt", XSD::QName.new(nil, "low")]],
      ["high", ["SOAP::SOAPInt", XSD::QName.new(nil, "high")]]
    ]
  )

  LiteralRegistry.register(
    :class => VirtualServerRegexReplacement,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.RegexReplacement"),
    :schema_element => [
      ["regex", ["SOAP::SOAPString", XSD::QName.new(nil, "regex")]],
      ["replacement", ["SOAP::SOAPString", XSD::QName.new(nil, "replacement")]]
    ]
  )

  LiteralRegistry.register(
    :class => VirtualServerRule,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.Rule"),
    :schema_element => [
      ["name", ["SOAP::SOAPString", XSD::QName.new(nil, "name")]],
      ["enabled", ["SOAP::SOAPBoolean", XSD::QName.new(nil, "enabled")]],
      ["run_frequency", ["VirtualServerRuleRunFlag", XSD::QName.new(nil, "run_frequency")]]
    ]
  )

  LiteralRegistry.register(
    :class => VirtualServerSSLSite,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.SSLSite"),
    :schema_element => [
      ["dest_address", ["SOAP::SOAPString", XSD::QName.new(nil, "dest_address")]],
      ["certificate", ["SOAP::SOAPString", XSD::QName.new(nil, "certificate")]]
    ]
  )

  LiteralRegistry.register(
    :class => VirtualServerCookieDomainRewriteMode,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.CookieDomainRewriteMode")
  )

  LiteralRegistry.register(
    :class => VirtualServerCookieSecureFlagRewriteMode,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.CookieSecureFlagRewriteMode")
  )

  LiteralRegistry.register(
    :class => VirtualServerLocationDefaultRewriteMode,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.LocationDefaultRewriteMode")
  )

  LiteralRegistry.register(
    :class => VirtualServerProtocol,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.Protocol")
  )

  LiteralRegistry.register(
    :class => VirtualServerRuleRunFlag,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.RuleRunFlag")
  )

  LiteralRegistry.register(
    :class => VirtualServerSIPDangerousRequestMode,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.SIPDangerousRequestMode")
  )

  LiteralRegistry.register(
    :class => VirtualServerSIPMode,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.SIPMode")
  )

  LiteralRegistry.register(
    :class => VirtualServerSSLClientCertificateHeaders,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.SSLClientCertificateHeaders")
  )

  LiteralRegistry.register(
    :class => VirtualServerSSLRequestClientCertMode,
    :schema_type => XSD::QName.new(NsC_10, "VirtualServer.SSLRequestClientCertMode")
  )
end
