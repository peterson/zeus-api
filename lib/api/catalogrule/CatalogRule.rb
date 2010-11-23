require 'xsd/qname'

# {http://soap.zeus.com/zxtm/1.0/}Catalog.Rule.RuleInfo
#   rule_text - SOAP::SOAPString
#   rule_notes - SOAP::SOAPString
class CatalogRuleRuleInfo
  attr_accessor :rule_text
  attr_accessor :rule_notes

  def initialize(rule_text = nil, rule_notes = nil)
    @rule_text = rule_text
    @rule_notes = rule_notes
  end
end

# {http://soap.zeus.com/zxtm/1.0/}Catalog.Rule.SyntaxCheck
#   valid - SOAP::SOAPBoolean
#   warnings - SOAP::SOAPString
#   errors - SOAP::SOAPString
class CatalogRuleSyntaxCheck
  attr_accessor :valid
  attr_accessor :warnings
  attr_accessor :errors

  def initialize(valid = nil, warnings = nil, errors = nil)
    @valid = valid
    @warnings = warnings
    @errors = errors
  end
end

# {http://soap.zeus.com/zxtm/1.0/}Catalog.Rule.RuleInfoArray
class CatalogRuleRuleInfoArray < ::Array
end

# {http://soap.zeus.com/zxtm/1.0/}Catalog.Rule.SyntaxCheckArray
class CatalogRuleSyntaxCheckArray < ::Array
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
