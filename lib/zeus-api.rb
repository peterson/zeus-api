for binding in ["VirtualServer", "Pool", "CatalogRule"]
  for suffix in ["", "Driver", "MappingRegistry", "Service"]
    require File.dirname(__FILE__) + "/api/#{binding.downcase}/#{binding}#{suffix}"
  end
end