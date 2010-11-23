#!/usr/bin/env ruby
require 'CatalogRuleDriver.rb'

endpoint_url = ARGV.shift
obj = CatalogRulePort.new(endpoint_url)

# run ruby with -d to see SOAP wiredumps.
obj.wiredump_dev = STDERR if $DEBUG

# SYNOPSIS
#   addRule(names, texts)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   texts           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = texts = nil
puts obj.addRule(names, texts)

# SYNOPSIS
#   checkSyntax(rule_text)
#
# ARGS
#   rule_text       StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   results         CatalogRuleSyntaxCheckArray - {http://soap.zeus.com/zxtm/1.0/}Catalog.Rule.SyntaxCheckArray
#
rule_text = nil
puts obj.checkSyntax(rule_text)

# SYNOPSIS
#   copyRule(names, new_names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   new_names       StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = new_names = nil
puts obj.copyRule(names, new_names)

# SYNOPSIS
#   deleteRule(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = nil
puts obj.deleteRule(names)

# SYNOPSIS
#   getRuleDetails(names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   info            CatalogRuleRuleInfoArray - {http://soap.zeus.com/zxtm/1.0/}Catalog.Rule.RuleInfoArray
#
names = nil
puts obj.getRuleDetails(names)

# SYNOPSIS
#   getRuleNames
#
# ARGS
#   N/A
#
# RETURNS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#

puts obj.getRuleNames

# SYNOPSIS
#   renameRule(names, new_names)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   new_names       StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = new_names = nil
puts obj.renameRule(names, new_names)

# SYNOPSIS
#   setRuleNotes(names, notes)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   notes           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = notes = nil
puts obj.setRuleNotes(names, notes)

# SYNOPSIS
#   setRuleText(names, text)
#
# ARGS
#   names           StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#   text            StringArray - {http://soap.zeus.com/zxtm/1.0/}StringArray
#
# RETURNS
#   N/A
#
names = text = nil
puts obj.setRuleText(names, text)


