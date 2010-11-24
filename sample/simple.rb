require 'rubygems'
require 'zeus-api'

endpoint = "https://10.0.0.250:9090/soap"
username = "api"
password = "api"

vs = VirtualServerService.new(endpoint, username, password)
p = PoolService.new(endpoint, username, password)
r = CatalogRuleService.new(endpoint, username, password)


# create a new pool
pool_name = "test-pool"
pool_nodes = ["10.0.0.101:80", "10.0.0.102:80"]

if p.list.include?(pool_name)
  p.delete(pool_name)
end

p.create(pool_name, pool_nodes)
puts "Pool '#{pool_name}' was successfully created."


# create a new virtual server
vs_name = "test"
vs_info = {
  :protocol => "http",
  :port => "8000",
  :default_pool => pool_name
}

if vs.list.include?(vs_name)
  # vs.delete("test") # FIXME implement
end

vs.create(vs_name, vs_info)
puts "Virtual server '#{vs_name}' was successfully created."

vs.enable(vs_name)
puts "Virtual server '#{vs_name}' was enabled."


# create a new rule and add to virtual server
rule_name = "test-rule"
rule_text = "if( string.contains( http.getheader( \"Host\" ), \"test.com\" ) ){\n\n\tpool.use( \"test-pool\" );\n\n}\n"
rule_note = "Simple Host header dispatch rule using trafficscript"

if (r.valid?(rule_text))
  r.create(rule_name, rule_text)
  r.note(rule_name, rule_note)
else
  puts "Error! Rule '#{rule_name}' failed validation!"
  puts "Errors:  #{r.errors}"
  puts "Warnings: #{r.warnings}"
end

vs.add_request_rule(vs_name, rule_name)
puts "Rule '#{rule_name}' added to virtual server '#{vs_name}'."

