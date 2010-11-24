#!/usr/bin/env ruby
require 'PoolDriver.rb'

endpoint_url = ARGV.shift
obj = PoolPort.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   addDrainingNodes(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.addDrainingNodes(names, values)

# SYNOPSIS
#   addMonitors(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.addMonitors(names, values)

# SYNOPSIS
#   addNodes(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.addNodes(names, values)

# SYNOPSIS
#   addPool(names, nodes)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   nodes           StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = nodes = nil
puts obj.addPool(names, nodes)

# SYNOPSIS
#   copyPool(names, new_names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   new_names       StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = new_names = nil
puts obj.copyPool(names, new_names)

# SYNOPSIS
#   deletePool(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = nil
puts obj.deletePool(names)

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
#   getDrainingNodes(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
names = nil
puts obj.getDrainingNodes(names)

# SYNOPSIS
#   getErrorFile(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getErrorFile(names)

# SYNOPSIS
#   getFTPSupportRfc2428(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getFTPSupportRfc2428(names)

# SYNOPSIS
#   getFailpool(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.comm/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getFailpool(names)

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
#   getLoadBalancingAlgorithm(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          PoolLoadBalancingAlgorithmArray - {http://soap.zeus.com/zxtm/1.0/}Pool.LoadBalancingAlgorithmArray
#
names = nil
puts obj.getLoadBalancingAlgorithm(names)

# SYNOPSIS
#   getMaxConnectTime(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getMaxConnectTime(names)

# SYNOPSIS
#   getMaxIdleConnectionsPerNode(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getMaxIdleConnectionsPerNode(names)

# SYNOPSIS
#   getMaxReplyTime(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getMaxReplyTime(names)

# SYNOPSIS
#   getMonitors(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
names = nil
puts obj.getMonitors(names)

# SYNOPSIS
#   getNodes(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
names = nil
puts obj.getNodes(names)

# SYNOPSIS
#   getNodesConnectionCounts(nodes)
#
# ARGS
#   nodes           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   nodes_connection_counts IntArray - {http://soap.zeus.com/zxtm/1.0/}intArray
#
nodes = nil
puts obj.getNodesConnectionCounts(nodes)

# SYNOPSIS
#   getNodesLastUsed(nodes)
#
# ARGS
#   nodes           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   nodes_last_used IntArray - {http://soap.zeus.com/zxtm/1.0/}intArray
#
nodes = nil
puts obj.getNodesLastUsed(nodes)

# SYNOPSIS
#   getNodesPriorityValue(names, nodes)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   nodes           StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   node_values     PoolPriorityValueDefinitionArrayArray - {http://soap.zeus.com/zxtm/1.0/}Pool.PriorityValueDefinitionArrayArray
#
names = nodes = nil
puts obj.getNodesPriorityValue(names, nodes)

# SYNOPSIS
#   getNodesWeightings(names, nodes)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   nodes           StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   node_values     PoolWeightingsDefinitionArrayArray - {http://soap.zeus.com/zxtm/1.0/}Pool.WeightingsDefinitionArrayArray
#
names = nodes = nil
puts obj.getNodesWeightings(names, nodes)

# SYNOPSIS
#   getPassiveMonitoring(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getPassiveMonitoring(names)

# SYNOPSIS
#   getPersistence(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
names = nil
puts obj.getPersistence(names)

# SYNOPSIS
#   getPoolNames
#
# ARGS
#   N/A
#
# RETURNS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#

puts obj.getPoolNames

# SYNOPSIS
#   getPriorityEnabled(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getPriorityEnabled(names)

# SYNOPSIS
#   getPriorityNodes(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
names = nil
puts obj.getPriorityNodes(names)

# SYNOPSIS
#   getPriorityValues(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   node_values     PoolPriorityValueDefinitionArrayArray - {http://soap.zeus.com/zxtm/1.0/}Pool.PriorityValueDefinitionArrayArray
#
names = nil
puts obj.getPriorityValues(names)

# SYNOPSIS
#   getSMTPSendStartTLS(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getSMTPSendStartTLS(names)

# SYNOPSIS
#   getSSLClientAuth(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getSSLClientAuth(names)

# SYNOPSIS
#   getSSLEncrypt(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getSSLEncrypt(names)

# SYNOPSIS
#   getSSLEnhance(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getSSLEnhance(names)

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
#   getSSLServerNameExtension(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getSSLServerNameExtension(names)

# SYNOPSIS
#   getSSLStrictVerify(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getSSLStrictVerify(names)

# SYNOPSIS
#   getTransparent(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
names = nil
puts obj.getTransparent(names)

# SYNOPSIS
#   getWeightings(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   node_values     PoolWeightingsDefinitionArrayArray - {http://soap.zeus.com/zxtm/1.0/}Pool.WeightingsDefinitionArrayArray
#
names = nil
puts obj.getWeightings(names)

# SYNOPSIS
#   removeDrainingNodes(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.removeDrainingNodes(names, values)

# SYNOPSIS
#   removeMonitors(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.removeMonitors(names, values)

# SYNOPSIS
#   removeNodes(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.removeNodes(names, values)

# SYNOPSIS
#   renamePool(names, new_names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   new_names       StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = new_names = nil
puts obj.renamePool(names, new_names)

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
#   setDrainingNodes(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setDrainingNodes(names, values)

# SYNOPSIS
#   setErrorFile(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setErrorFile(names, values)

# SYNOPSIS
#   setFTPSupportRfc2428(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setFTPSupportRfc2428(names, values)

# SYNOPSIS
#   setFailpool(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setFailpool(names, values)

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
#   setLoadBalancingAlgorithm(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          PoolLoadBalancingAlgorithmArray - {http://soap.zeus.com/zxtm/1.0/}Pool.LoadBalancingAlgorithmArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setLoadBalancingAlgorithm(names, values)

# SYNOPSIS
#   setMaxConnectTime(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setMaxConnectTime(names, values)

# SYNOPSIS
#   setMaxIdleConnectionsPerNode(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setMaxIdleConnectionsPerNode(names, values)

# SYNOPSIS
#   setMaxReplyTime(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setMaxReplyTime(names, values)

# SYNOPSIS
#   setMonitors(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setMonitors(names, values)

# SYNOPSIS
#   setNodes(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArrayArray - {http://soap.zeus.com/zxtm/1.0/}StringArrayArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setNodes(names, values)

# SYNOPSIS
#   setNodesPriorityValue(names, node_values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   node_values     PoolPriorityValueDefinitionArrayArray - {http://soap.zeus.com/zxtm/1.0/}Pool.PriorityValueDefinitionArrayArray
#
# RETURNS
#   N/A
#
names = node_values = nil
puts obj.setNodesPriorityValue(names, node_values)

# SYNOPSIS
#   setNodesWeightings(names, nodes_values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   nodes_values    PoolWeightingsDefinitionArrayArray - {http://soap.zeus.com/zxtm/1.0/}Pool.WeightingsDefinitionArrayArray
#
# RETURNS
#   N/A
#
names = nodes_values = nil
puts obj.setNodesWeightings(names, nodes_values)

# SYNOPSIS
#   setPassiveMonitoring(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setPassiveMonitoring(names, values)

# SYNOPSIS
#   setPersistence(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setPersistence(names, values)

# SYNOPSIS
#   setPriorityEnabled(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setPriorityEnabled(names, values)

# SYNOPSIS
#   setPriorityNodes(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          UnsignedIntArray - {http://soap.zeus.com/zxtm/1.0/}unsignedIntArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setPriorityNodes(names, values)

# SYNOPSIS
#   setSMTPSendStartTLS(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSMTPSendStartTLS(names, values)

# SYNOPSIS
#   setSSLClientAuth(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLClientAuth(names, values)

# SYNOPSIS
#   setSSLEncrypt(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLEncrypt(names, values)

# SYNOPSIS
#   setSSLEnhance(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLEnhance(names, values)

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
#   setSSLServerNameExtension(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLServerNameExtension(names, values)

# SYNOPSIS
#   setSSLStrictVerify(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setSSLStrictVerify(names, values)

# SYNOPSIS
#   setTransparent(names, values)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   values          BooleanArray - {http://soap.zeus.com/zxtm/1.0/}booleanArray
#
# RETURNS
#   N/A
#
names = values = nil
puts obj.setTransparent(names, values)


