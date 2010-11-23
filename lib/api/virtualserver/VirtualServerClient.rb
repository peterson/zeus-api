#!/usr/bin/env ruby
require 'VirtualServerDriver.rb'

endpoint_url = ARGV.shift
obj = VirtualServerPort.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   addCompressionMIMETypes(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.addCompressionMIMETypes(names, values)

# SYNOPSIS
#   addResponseRules(names, rules)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   rules           VirtualServerRuleArrayArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RuleArrayArray
#
# RETURNS
#   N/A
#
names = rules = nil
puts obj.addResponseRules(names, rules)

# SYNOPSIS
#   addRules(names, rules)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   rules           VirtualServerRuleArrayArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RuleArrayArray
#
# RETURNS
#   N/A
#
names = rules = nil
puts obj.addRules(names, rules)

# SYNOPSIS
#   addSSLClientCertificateAuthorities(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.addSSLClientCertificateAuthorities(names, values)

# SYNOPSIS
#   addSSLSites(names, ssl_sites)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   ssl_sites       VirtualServerSSLSiteArrayArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLSiteArrayArray
#
# RETURNS
#   N/A
#
names = ssl_sites = nil
puts obj.addSSLSites(names, ssl_sites)

# SYNOPSIS
#   addVirtualServer(names, info)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   info            VirtualServerBasicInfoArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.BasicInfoArray
#
# RETURNS
#   N/A
#
names = info = nil
puts obj.addVirtualServer(names, info)

# SYNOPSIS
#   copyVirtualServer(names, new_names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   new_names       StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = new_names = nil
puts obj.copyVirtualServer(names, new_names)

# SYNOPSIS
#   deleteSSLSites(names, site_ips)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   site_ips        StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = site_ips = nil
puts obj.deleteSSLSites(names, site_ips)

# SYNOPSIS
#   deleteVirtualServer(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = nil
puts obj.deleteVirtualServer(names)

# SYNOPSIS
#   editSSLSites(names, site_ips, ssl_sites)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   site_ips        StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#   ssl_sites       VirtualServerSSLSiteArrayArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLSiteArrayArray
#
# RETURNS
#   N/A
#
names = site_ips = ssl_sites = nil
puts obj.editSSLSites(names, site_ips, ssl_sites)

# SYNOPSIS
#   getAddClusterClientIPHeader(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getAddClusterClientIPHeader(names)

# SYNOPSIS
#   getBandwidthClass(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getBandwidthClass(names)

# SYNOPSIS
#   getBasicInfo(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   info            VirtualServerBasicInfoArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.BasicInfoArray
#
names = nil
puts obj.getBasicInfo(names)

# SYNOPSIS
#   getCompressUnknownSize(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getCompressUnknownSize(names)

# SYNOPSIS
#   getCompressionEnabled(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getCompressionEnabled(names)

# SYNOPSIS
#   getCompressionLevel(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getCompressionLevel(names)

# SYNOPSIS
#   getCompressionMIMETypes(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
names = nil
puts obj.getCompressionMIMETypes(names)

# SYNOPSIS
#   getCompressionMaxSize(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getCompressionMaxSize(names)

# SYNOPSIS
#   getCompressionMinSize(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getCompressionMinSize(names)

# SYNOPSIS
#   getConnectTimeout(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getConnectTimeout(names)

# SYNOPSIS
#   getCookieDomainRewriteMode(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          VirtualServerCookieDomainRewriteModeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.CookieDomainRewriteModeArray
#
names = nil
puts obj.getCookieDomainRewriteMode(names)

# SYNOPSIS
#   getCookieNamedDomain(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getCookieNamedDomain(names)

# SYNOPSIS
#   getCookiePathRewrite(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          VirtualServerRegexReplacementArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RegexReplacementArray
#
names = nil
puts obj.getCookiePathRewrite(names)

# SYNOPSIS
#   getCookieSecureFlagRewriteMode(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          VirtualServerCookieSecureFlagRewriteModeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.CookieSecureFlagRewriteModeArray
#
names = nil
puts obj.getCookieSecureFlagRewriteMode(names)

# SYNOPSIS
#   getDefaultPool(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getDefaultPool(names)

# SYNOPSIS
#   getEnabled(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getEnabled(names)

# SYNOPSIS
#   getFTPDataSourcePort(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getFTPDataSourcePort(names)

# SYNOPSIS
#   getFTPForceClientSecure(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getFTPForceClientSecure(names)

# SYNOPSIS
#   getFTPForceServerSecure(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getFTPForceServerSecure(names)

# SYNOPSIS
#   getFTPPortRange(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   range           VirtualServerFTPPortRangeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.FTPPortRangeArray
#
names = nil
puts obj.getFTPPortRange(names)

# SYNOPSIS
#   getFTPSSLData(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getFTPSSLData(names)

# SYNOPSIS
#   getKeepalive(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getKeepalive(names)

# SYNOPSIS
#   getKeepaliveTimeout(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getKeepaliveTimeout(names)

# SYNOPSIS
#   getListenAddresses(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   addresses       StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
names = nil
puts obj.getListenAddresses(names)

# SYNOPSIS
#   getListenOnAllAddresses(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getListenOnAllAddresses(names)

# SYNOPSIS
#   getListenTrafficIPGroups(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   groups          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
names = nil
puts obj.getListenTrafficIPGroups(names)

# SYNOPSIS
#   getLocationDefaultRewriteMode(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          VirtualServerLocationDefaultRewriteModeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.LocationDefaultRewriteModeArray
#
names = nil
puts obj.getLocationDefaultRewriteMode(names)

# SYNOPSIS
#   getLocationRewrite(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          VirtualServerRegexReplacementArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RegexReplacementArray
#
names = nil
puts obj.getLocationRewrite(names)

# SYNOPSIS
#   getLogEnabled(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getLogEnabled(names)

# SYNOPSIS
#   getLogFilename(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getLogFilename(names)

# SYNOPSIS
#   getLogFormat(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getLogFormat(names)

# SYNOPSIS
#   getMIMEAutoDetect(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getMIMEAutoDetect(names)

# SYNOPSIS
#   getMIMEDefaultType(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getMIMEDefaultType(names)

# SYNOPSIS
#   getMaxClientBuffer(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getMaxClientBuffer(names)

# SYNOPSIS
#   getMaxServerBuffer(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getMaxServerBuffer(names)

# SYNOPSIS
#   getPort(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getPort(names)

# SYNOPSIS
#   getProtection(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getProtection(names)

# SYNOPSIS
#   getProtocol(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          VirtualServerProtocolArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.ProtocolArray
#
names = nil
puts obj.getProtocol(names)

# SYNOPSIS
#   getProxyClose(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getProxyClose(names)

# SYNOPSIS
#   getRTSPPortRange(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   range           VirtualServerPortRangeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.PortRangeArray
#
names = nil
puts obj.getRTSPPortRange(names)

# SYNOPSIS
#   getResponseRules(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   rules           VirtualServerRuleArrayArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RuleArrayArray
#
names = nil
puts obj.getResponseRules(names)

# SYNOPSIS
#   getRewriteSIPURI(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getRewriteSIPURI(names)

# SYNOPSIS
#   getRules(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   rules           VirtualServerRuleArrayArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RuleArrayArray
#
names = nil
puts obj.getRules(names)

# SYNOPSIS
#   getSIPDangerousRequestMode(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          VirtualServerSIPDangerousRequestModeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SIPDangerousRequestModeArray
#
names = nil
puts obj.getSIPDangerousRequestMode(names)

# SYNOPSIS
#   getSIPMaxConnectionMemory(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getSIPMaxConnectionMemory(names)

# SYNOPSIS
#   getSIPMode(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          VirtualServerSIPModeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SIPModeArray
#
names = nil
puts obj.getSIPMode(names)

# SYNOPSIS
#   getSIPPortRange(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   range           VirtualServerPortRangeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.PortRangeArray
#
names = nil
puts obj.getSIPPortRange(names)

# SYNOPSIS
#   getSIPStreamingTimeout(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getSIPStreamingTimeout(names)

# SYNOPSIS
#   getSSLCertificate(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   certs           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getSSLCertificate(names)

# SYNOPSIS
#   getSSLClientCertificateAuthorities(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
names = nil
puts obj.getSSLClientCertificateAuthorities(names)

# SYNOPSIS
#   getSSLClientCertificateHeaders(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          VirtualServerSSLClientCertificateHeadersArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLClientCertificateHeadersArray
#
names = nil
puts obj.getSSLClientCertificateHeaders(names)

# SYNOPSIS
#   getSSLDecrypt(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getSSLDecrypt(names)

# SYNOPSIS
#   getSSLExpectStartTLS(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getSSLExpectStartTLS(names)

# SYNOPSIS
#   getSSLHeaders(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getSSLHeaders(names)

# SYNOPSIS
#   getSSLLogEnabled(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getSSLLogEnabled(names)

# SYNOPSIS
#   getSSLRequestClientCertMode(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          VirtualServerSSLRequestClientCertModeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLRequestClientCertModeArray
#
names = nil
puts obj.getSSLRequestClientCertMode(names)

# SYNOPSIS
#   getSSLSendCloseAlerts(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getSSLSendCloseAlerts(names)

# SYNOPSIS
#   getSSLSites(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   ssl_sites       VirtualServerSSLSiteArrayArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLSiteArrayArray
#
names = nil
puts obj.getSSLSites(names)

# SYNOPSIS
#   getSSLTrustMagic(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getSSLTrustMagic(names)

# SYNOPSIS
#   getServerfirstBanner(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getServerfirstBanner(names)

# SYNOPSIS
#   getServiceLevelMonitoring(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getServiceLevelMonitoring(names)

# SYNOPSIS
#   getSipTransactionTimeout(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getSipTransactionTimeout(names)

# SYNOPSIS
#   getTimeout(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getTimeout(names)

# SYNOPSIS
#   getUDPResponseDatagramsExpected(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          IntArray - {http://soap.zeus.com/zxtm/1.0/}intArray
#
names = nil
puts obj.getUDPResponseDatagramsExpected(names)

# SYNOPSIS
#   getUDPTimeout(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getUDPTimeout(names)

# SYNOPSIS
#   getUseNagle(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getUseNagle(names)

# SYNOPSIS
#   getVirtualServerNames
#
# ARGS
#   N/A
#
# RETURNS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#

puts obj.getVirtualServerNames

# SYNOPSIS
#   getWebcacheControlOut(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getWebcacheControlOut(names)

# SYNOPSIS
#   getWebcacheEnabled(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getWebcacheEnabled(names)

# SYNOPSIS
#   getWebcacheErrorpageTime(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getWebcacheErrorpageTime(names)

# SYNOPSIS
#   getWebcacheRefreshTime(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getWebcacheRefreshTime(names)

# SYNOPSIS
#   getWebcacheTime(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getWebcacheTime(names)

# SYNOPSIS
#   removeCompressionMIMETypes(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.removeCompressionMIMETypes(names, values)

# SYNOPSIS
#   removeFTPPortRange(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = nil
puts obj.removeFTPPortRange(names)

# SYNOPSIS
#   removeRTSPPortRange(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = nil
puts obj.removeRTSPPortRange(names)

# SYNOPSIS
#   removeResponseRules(names, rules)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   rules           StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = rules = nil
puts obj.removeResponseRules(names, rules)

# SYNOPSIS
#   removeRules(names, rules)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   rules           StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = rules = nil
puts obj.removeRules(names, rules)

# SYNOPSIS
#   removeSIPPortRange(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = nil
puts obj.removeSIPPortRange(names)

# SYNOPSIS
#   removeSSLClientCertificateAuthorities(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.removeSSLClientCertificateAuthorities(names, values)

# SYNOPSIS
#   renameVirtualServer(names, new_names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   new_names       StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = new_names = nil
puts obj.renameVirtualServer(names, new_names)

# SYNOPSIS
#   setAddClusterClientIPHeader(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setAddClusterClientIPHeader(names, values)

# SYNOPSIS
#   setBandwidthClass(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setBandwidthClass(names, values)

# SYNOPSIS
#   setCompressUnknownSize(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setCompressUnknownSize(names, values)

# SYNOPSIS
#   setCompressionEnabled(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setCompressionEnabled(names, values)

# SYNOPSIS
#   setCompressionLevel(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setCompressionLevel(names, values)

# SYNOPSIS
#   setCompressionMIMETypes(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setCompressionMIMETypes(names, values)

# SYNOPSIS
#   setCompressionMaxSize(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setCompressionMaxSize(names, values)

# SYNOPSIS
#   setCompressionMinSize(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setCompressionMinSize(names, values)

# SYNOPSIS
#   setConnectTimeout(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setConnectTimeout(names, values)

# SYNOPSIS
#   setCookieDomainRewriteMode(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          VirtualServerCookieDomainRewriteModeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.CookieDomainRewriteModeArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setCookieDomainRewriteMode(names, values)

# SYNOPSIS
#   setCookieNamedDomain(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setCookieNamedDomain(names, values)

# SYNOPSIS
#   setCookiePathRewrite(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          VirtualServerRegexReplacementArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RegexReplacementArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setCookiePathRewrite(names, values)

# SYNOPSIS
#   setCookieSecureFlagRewriteMode(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          VirtualServerCookieSecureFlagRewriteModeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.CookieSecureFlagRewriteModeArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setCookieSecureFlagRewriteMode(names, values)

# SYNOPSIS
#   setDefaultPool(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setDefaultPool(names, values)

# SYNOPSIS
#   setEnabled(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setEnabled(names, values)

# SYNOPSIS
#   setFTPDataSourcePort(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setFTPDataSourcePort(names, values)

# SYNOPSIS
#   setFTPForceClientSecure(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setFTPForceClientSecure(names, values)

# SYNOPSIS
#   setFTPForceServerSecure(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setFTPForceServerSecure(names, values)

# SYNOPSIS
#   setFTPPortRange(names, range)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   range           VirtualServerFTPPortRangeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.FTPPortRangeArray
#
# RETURNS
#   N/A
#
names = range = nil
puts obj.setFTPPortRange(names, range)

# SYNOPSIS
#   setFTPSSLData(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setFTPSSLData(names, values)

# SYNOPSIS
#   setKeepalive(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setKeepalive(names, values)

# SYNOPSIS
#   setKeepaliveTimeout(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setKeepaliveTimeout(names, values)

# SYNOPSIS
#   setListenAddresses(names, addresses)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   addresses       StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = addresses = nil
puts obj.setListenAddresses(names, addresses)

# SYNOPSIS
#   setListenOnAllAddresses(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = nil
puts obj.setListenOnAllAddresses(names)

# SYNOPSIS
#   setListenTrafficIPGroups(names, groups)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   groups          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = groups = nil
puts obj.setListenTrafficIPGroups(names, groups)

# SYNOPSIS
#   setLocationDefaultRewriteMode(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          VirtualServerLocationDefaultRewriteModeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.LocationDefaultRewriteModeArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setLocationDefaultRewriteMode(names, values)

# SYNOPSIS
#   setLocationRewrite(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          VirtualServerRegexReplacementArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RegexReplacementArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setLocationRewrite(names, values)

# SYNOPSIS
#   setLogEnabled(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setLogEnabled(names, values)

# SYNOPSIS
#   setLogFilename(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setLogFilename(names, values)

# SYNOPSIS
#   setLogFormat(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setLogFormat(names, values)

# SYNOPSIS
#   setMIMEAutoDetect(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setMIMEAutoDetect(names, values)

# SYNOPSIS
#   setMIMEDefaultType(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setMIMEDefaultType(names, values)

# SYNOPSIS
#   setMaxClientBuffer(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setMaxClientBuffer(names, values)

# SYNOPSIS
#   setMaxServerBuffer(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setMaxServerBuffer(names, values)

# SYNOPSIS
#   setPort(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setPort(names, values)

# SYNOPSIS
#   setProtection(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setProtection(names, values)

# SYNOPSIS
#   setProtocol(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          VirtualServerProtocolArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.ProtocolArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setProtocol(names, values)

# SYNOPSIS
#   setProxyClose(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setProxyClose(names, values)

# SYNOPSIS
#   setRTSPPortRange(names, range)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   range           VirtualServerPortRangeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.PortRangeArray
#
# RETURNS
#   N/A
#
names = range = nil
puts obj.setRTSPPortRange(names, range)

# SYNOPSIS
#   setResponseRules(names, rules)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   rules           VirtualServerRuleArrayArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RuleArrayArray
#
# RETURNS
#   N/A
#
names = rules = nil
puts obj.setResponseRules(names, rules)

# SYNOPSIS
#   setRewriteSIPURI(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setRewriteSIPURI(names, values)

# SYNOPSIS
#   setRules(names, rules)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   rules           VirtualServerRuleArrayArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.RuleArrayArray
#
# RETURNS
#   N/A
#
names = rules = nil
puts obj.setRules(names, rules)

# SYNOPSIS
#   setSIPDangerousRequestMode(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          VirtualServerSIPDangerousRequestModeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SIPDangerousRequestModeArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSIPDangerousRequestMode(names, values)

# SYNOPSIS
#   setSIPMaxConnectionMemory(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSIPMaxConnectionMemory(names, values)

# SYNOPSIS
#   setSIPMode(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          VirtualServerSIPModeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SIPModeArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSIPMode(names, values)

# SYNOPSIS
#   setSIPPortRange(names, range)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   range           VirtualServerPortRangeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.PortRangeArray
#
# RETURNS
#   N/A
#
names = range = nil
puts obj.setSIPPortRange(names, range)

# SYNOPSIS
#   setSIPStreamingTimeout(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSIPStreamingTimeout(names, values)

# SYNOPSIS
#   setSSLCertificate(names, certs)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   certs           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = certs = nil
puts obj.setSSLCertificate(names, certs)

# SYNOPSIS
#   setSSLClientCertificateAuthorities(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLClientCertificateAuthorities(names, values)

# SYNOPSIS
#   setSSLClientCertificateHeaders(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          VirtualServerSSLClientCertificateHeadersArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLClientCertificateHeadersArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLClientCertificateHeaders(names, values)

# SYNOPSIS
#   setSSLDecrypt(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLDecrypt(names, values)

# SYNOPSIS
#   setSSLExpectStartTLS(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLExpectStartTLS(names, values)

# SYNOPSIS
#   setSSLHeaders(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLHeaders(names, values)

# SYNOPSIS
#   setSSLLogEnabled(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLLogEnabled(names, values)

# SYNOPSIS
#   setSSLRequestClientCertMode(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          VirtualServerSSLRequestClientCertModeArray - {http://soap.zeus.com/zxtm/1.0/}VirtualServer.SSLRequestClientCertModeArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLRequestClientCertMode(names, values)

# SYNOPSIS
#   setSSLSendCloseAlerts(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLSendCloseAlerts(names, values)

# SYNOPSIS
#   setSSLTrustMagic(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLTrustMagic(names, values)

# SYNOPSIS
#   setServerfirstBanner(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setServerfirstBanner(names, values)

# SYNOPSIS
#   setServiceLevelMonitoring(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setServiceLevelMonitoring(names, values)

# SYNOPSIS
#   setSipTransactionTimeout(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSipTransactionTimeout(names, values)

# SYNOPSIS
#   setTimeout(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setTimeout(names, values)

# SYNOPSIS
#   setUDPResponseDatagramsExpected(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          IntArray - {http://soap.zeus.com/zxtm/1.0/}intArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setUDPResponseDatagramsExpected(names, values)

# SYNOPSIS
#   setUDPTimeout(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setUDPTimeout(names, values)

# SYNOPSIS
#   setUseNagle(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setUseNagle(names, values)

# SYNOPSIS
#   setWebcacheControlOut(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setWebcacheControlOut(names, values)

# SYNOPSIS
#   setWebcacheEnabled(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setWebcacheEnabled(names, values)

# SYNOPSIS
#   setWebcacheErrorpageTime(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setWebcacheErrorpageTime(names, values)

# SYNOPSIS
#   setWebcacheRefreshTime(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setWebcacheRefreshTime(names, values)

# SYNOPSIS
#   setWebcacheTime(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setWebcacheTime(names, values)


