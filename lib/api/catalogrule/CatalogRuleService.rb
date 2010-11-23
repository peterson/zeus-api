require "CatalogRuleDriver.rb"
require "CatalogRuleServer.rb"

#
# CatalogRuleService
#
# This class provides a facade for SOAP method calls to the
# ZXTM Virtual Server web service.
#
class CatalogRuleService
  
  attr_accessor :driver
  
  def initialize(endpoint=nil, username=nil, password=nil)
    @driver = CatalogRulePort.new(endpoint)
    @driver.options["protocol.http.ssl_config.verify_mode"] = OpenSSL::SSL::VERIFY_NONE
    @driver.options["protocol.http.basic_auth"] << [endpoint, username, password]
  end

  # Creates a new rule
  #
  # Args
  #   name (String)   - Rule name
  #   text (String)   - Rule text
  #
  # Examples
  #   create("route-traffic", ["text_of_rule"])  - Creates new rule called "route-traffic" with text of rule as supplied.
  #  
  def create(name, text)
    @driver.addRule([name], [text])
  end

  # Checks the text of a rule
  #
  # Args
  #   text (String)   - Rule text
  #
  # Examples
  #   check("text_of_rule")  - Calls a check on the rule, returns valid, warning or error
  #  
  def check(text)
    res = @driver.checkSyntax(text)
  end

  # Copies a rule
  #
  # Args
  #   name (String)       - Name of current rule
  #   new_name (String)   - Name of new rule
  #
  # Examples
  #   copy(name, new_name)  - Copies rule called "name" to a new rule, called "new_name"
  #  
  def copy(name, new_name)
    @driver.copyRule([name], [new_name])
  end

  # Deletes a rule
  #
  # Args
  #   name (String)       - Name of rule
  #
  # Examples
  #   delete(name)        - Deletes rule called "name"
  #  
  def delete(name)
    @driver.deleteRule([name])
  end

  # Fetches details about a rule
  #
  # Args
  #   name (String)       - Name of rule
  #
  # Returns
  #
  # Examples
  #   details(name)        - Deletes rule called "name"
  #  
  def details(name)
    @driver.getRuleDetails([name]).first   # get first info
  end

  # Fetches the list of rules by name
  #
  # Args
  #   None
  #
  # Examples
  #   names              - Deletes rule called "name"
  #  
  def names
    @driver.getRuleNames
  end

  # Renames a rule
  #
  #   name (String)       - Name of current rule
  #   new_name (String)   - Name of new rule
  #
  # Examples
  #   rename(name, new_name)  - Copies rule called "name" to a new rule, called "new_name"
  def rename(name, new_name)
    @driver.renameRule([name], [new_name])
  end

  # Sets the note for a rule
  #
  #   name (String)       - Name of rule
  #   note (String)       - Text of note
  #
  # Examples
  #   note(name, note)  - Sets the note for a rule called "name"
  def note(name, note)
    @driver.setRuleNote([name], [note])
  end

  # Sets the text for a rule
  #
  #   name (String)       - Name of rule
  #   text (String)       - Text of rule
  #
  # Examples
  #   text(name, text)  - Sets the text for a rule called "name"
  def text(name, text)
    @driver.setRuleText([name], [text])
  end

end