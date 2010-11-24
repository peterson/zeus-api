# for binding in ["VirtualServer"]
#   for suffix in ["Service"]
#     require File.dirname(__FILE__) + "/api/#{binding.downcase}/#{binding}#{suffix}"
#   end
# end
for binding in ["VirtualServer", "Pool", "CatalogRule"]
  require File.dirname(__FILE__) + "/api/#{binding.downcase}/#{binding}Service"
end