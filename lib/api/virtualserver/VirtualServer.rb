require 'xsd/qname'

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.BasicInfo
#   port - SOAP::SOAPInt
#   protocol - VirtualServerProtocol
#   default_pool - SOAP::SOAPString
class VirtualServerBasicInfo
  attr_accessor :port
  attr_accessor :protocol
  attr_accessor :default_pool

  def initialize(port = nil, protocol = nil, default_pool = nil)
    @port = port
    @protocol = protocol
    @default_pool = default_pool
  end
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.FTPPortRange
#   low - SOAP::SOAPInt
#   high - SOAP::SOAPInt
class VirtualServerFTPPortRange
  attr_accessor :low
  attr_accessor :high

  def initialize(low = nil, high = nil)
    @low = low
    @high = high
  end
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.PortRange
#   low - SOAP::SOAPInt
#   high - SOAP::SOAPInt
class VirtualServerPortRange
  attr_accessor :low
  attr_accessor :high

  def initialize(low = nil, high = nil)
    @low = low
    @high = high
  end
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RegexReplacement
#   regex - SOAP::SOAPString
#   replacement - SOAP::SOAPString
class VirtualServerRegexReplacement
  attr_accessor :regex
  attr_accessor :replacement

  def initialize(regex = nil, replacement = nil)
    @regex = regex
    @replacement = replacement
  end
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.Rule
#   name - SOAP::SOAPString
#   enabled - SOAP::SOAPBoolean
#   run_frequency - VirtualServerRuleRunFlag
class VirtualServerRule
  attr_accessor :name
  attr_accessor :enabled
  attr_accessor :run_frequency

  def initialize(name = nil, enabled = nil, run_frequency = nil)
    @name = name
    @enabled = enabled
    @run_frequency = run_frequency
  end
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLSite
#   dest_address - SOAP::SOAPString
#   certificate - SOAP::SOAPString
class VirtualServerSSLSite
  attr_accessor :dest_address
  attr_accessor :certificate

  def initialize(dest_address = nil, certificate = nil)
    @dest_address = dest_address
    @certificate = certificate
  end
end

# {http://soap.zeus.com/zxtm/1.0/}StringArray
class StringArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
class StringArrayArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.BasicInfoArray
class VirtualServerBasicInfoArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.CookieDomainRewriteModeArray
class VirtualServerCookieDomainRewriteModeArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.CookieSecureFlagRewriteModeArray
class VirtualServerCookieSecureFlagRewriteModeArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.FTPPortRangeArray
class VirtualServerFTPPortRangeArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.LocationDefaultRewriteModeArray
class VirtualServerLocationDefaultRewriteModeArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.PortRangeArray
class VirtualServerPortRangeArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.ProtocolArray
class VirtualServerProtocolArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RegexReplacementArray
class VirtualServerRegexReplacementArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RuleArray
class VirtualServerRuleArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RuleArrayArray
class VirtualServerRuleArrayArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SIPDangerousRequestModeArray
class VirtualServerSIPDangerousRequestModeArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SIPModeArray
class VirtualServerSIPModeArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLClientCertificateHeadersArray
class VirtualServerSSLClientCertificateHeadersArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLRequestClientCertModeArray
class VirtualServerSSLRequestClientCertModeArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLSiteArray
class VirtualServerSSLSiteArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLSiteArrayArray
class VirtualServerSSLSiteArrayArray < ::Array
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

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.CookieDomainRewriteMode
class VirtualServerCookieDomainRewriteMode < ::String
  No_rewrite = VirtualServerCookieDomainRewriteMode.new("no_rewrite")
  Set_to_named = VirtualServerCookieDomainRewriteMode.new("set_to_named")
  Set_to_request = VirtualServerCookieDomainRewriteMode.new("set_to_request")
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.CookieSecureFlagRewriteMode
class VirtualServerCookieSecureFlagRewriteMode < ::String
  No_modify = VirtualServerCookieSecureFlagRewriteMode.new("no_modify")
  Set_secure = VirtualServerCookieSecureFlagRewriteMode.new("set_secure")
  Unset_secure = VirtualServerCookieSecureFlagRewriteMode.new("unset_secure")
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.LocationDefaultRewriteMode
class VirtualServerLocationDefaultRewriteMode < ::String
  Always = VirtualServerLocationDefaultRewriteMode.new("always")
  If_host_matches = VirtualServerLocationDefaultRewriteMode.new("if_host_matches")
  Never = VirtualServerLocationDefaultRewriteMode.new("never")
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.Protocol
class VirtualServerProtocol < ::String
  Client_first = VirtualServerProtocol.new("client_first")
  Dns = VirtualServerProtocol.new("dns")
  DnsTcp = VirtualServerProtocol.new("dns-tcp")
  Ftp = VirtualServerProtocol.new("ftp")
  Http = VirtualServerProtocol.new("http")
  Https = VirtualServerProtocol.new("https")
  Imaps = VirtualServerProtocol.new("imaps")
  Imapv2 = VirtualServerProtocol.new("imapv2")
  Imapv3 = VirtualServerProtocol.new("imapv3")
  Imapv4 = VirtualServerProtocol.new("imapv4")
  Ldap = VirtualServerProtocol.new("ldap")
  Ldaps = VirtualServerProtocol.new("ldaps")
  Pop3 = VirtualServerProtocol.new("pop3")
  Pop3s = VirtualServerProtocol.new("pop3s")
  Rtsp = VirtualServerProtocol.new("rtsp")
  Server_first = VirtualServerProtocol.new("server_first")
  Siptcp = VirtualServerProtocol.new("siptcp")
  Sipudp = VirtualServerProtocol.new("sipudp")
  Smtp = VirtualServerProtocol.new("smtp")
  Ssl = VirtualServerProtocol.new("ssl")
  Telnet = VirtualServerProtocol.new("telnet")
  Udp = VirtualServerProtocol.new("udp")
  Udpstreaming = VirtualServerProtocol.new("udpstreaming")
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RuleRunFlag
class VirtualServerRuleRunFlag < ::String
  Only_first = VirtualServerRuleRunFlag.new("only_first")
  Run_every = VirtualServerRuleRunFlag.new("run_every")
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SIPDangerousRequestMode
class VirtualServerSIPDangerousRequestMode < ::String
  Forbid = VirtualServerSIPDangerousRequestMode.new("forbid")
  Forward = VirtualServerSIPDangerousRequestMode.new("forward")
  Node = VirtualServerSIPDangerousRequestMode.new("node")
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SIPMode
class VirtualServerSIPMode < ::String
  Fullgw = VirtualServerSIPMode.new("fullgw")
  Route = VirtualServerSIPMode.new("route")
  Sipgw = VirtualServerSIPMode.new("sipgw")
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLClientCertificateHeaders
class VirtualServerSSLClientCertificateHeaders < ::String
  All = VirtualServerSSLClientCertificateHeaders.new("all")
  None = VirtualServerSSLClientCertificateHeaders.new("none")
  Simple = VirtualServerSSLClientCertificateHeaders.new("simple")
end

# {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLRequestClientCertMode
class VirtualServerSSLRequestClientCertMode < ::String
  Dont_request = VirtualServerSSLRequestClientCertMode.new("dont_request")
  Request = VirtualServerSSLRequestClientCertMode.new("request")
  Require = VirtualServerSSLRequestClientCertMode.new("require")
end
