require 'lib/api/catalogrule/CatalogRule.rb'
require 'lib/api/catalogrule/CatalogRuleMappingRegistry.rb'
require 'soap/rpc/driver'

class CatalogRulePort < ::SOAP::RPC::Driver
  DefaultEndpointUrl = "https://admin_server:9090/soap"
  NsRule = "http://soap.zeus.com/zxtm/1.0/Catalog/Rule/"

  Methods = [
    [ XSD::QName.new(NsRule, "addRule"),
      "http://soap.zeus.com/zxtm/1.0/Catalog/Rule/addRule",
      "addRule",
      [ ["in", "names", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]],
        ["in", "texts", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRule, "checkSyntax"),
      "http://soap.zeus.com/zxtm/1.0/Catalog/Rule/checkSyntax",
      "checkSyntax",
      [ ["in", "rule_text", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]],
        ["retval", "results", ["CatalogRuleSyntaxCheckArray", "http://soap.zeus.com/zxtm/1.0/", "Catalog.Rule.SyntaxCheckArray"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRule, "copyRule"),
      "http://soap.zeus.com/zxtm/1.0/Catalog/Rule/copyRule",
      "copyRule",
      [ ["in", "names", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]],
        ["in", "new_names", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRule, "deleteRule"),
      "http://soap.zeus.com/zxtm/1.0/Catalog/Rule/deleteRule",
      "deleteRule",
      [ ["in", "names", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRule, "getRuleDetails"),
      "http://soap.zeus.com/zxtm/1.0/Catalog/Rule/getRuleDetails",
      "getRuleDetails",
      [ ["in", "names", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]],
        ["retval", "info", ["CatalogRuleRuleInfoArray", "http://soap.zeus.com/zxtm/1.0/", "Catalog.Rule.RuleInfoArray"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRule, "getRuleNames"),
      "http://soap.zeus.com/zxtm/1.0/Catalog/Rule/getRuleNames",
      "getRuleNames",
      [ ["retval", "names", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRule, "renameRule"),
      "http://soap.zeus.com/zxtm/1.0/Catalog/Rule/renameRule",
      "renameRule",
      [ ["in", "names", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]],
        ["in", "new_names", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRule, "setRuleNotes"),
      "http://soap.zeus.com/zxtm/1.0/Catalog/Rule/setRuleNotes",
      "setRuleNotes",
      [ ["in", "names", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]],
        ["in", "notes", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ],
    [ XSD::QName.new(NsRule, "setRuleText"),
      "http://soap.zeus.com/zxtm/1.0/Catalog/Rule/setRuleText",
      "setRuleText",
      [ ["in", "names", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]],
        ["in", "text", ["StringArray", "http://soap.zeus.com/zxtm/1.0/", "StringArray"]] ],
      { :request_style =>  :rpc, :request_use =>  :encoded,
        :response_style => :rpc, :response_use => :encoded,
        :faults => {} }
    ]
  ]

  def initialize(endpoint_url = nil)
    endpoint_url ||= DefaultEndpointUrl
    super(endpoint_url, nil)
    self.mapping_registry = CatalogRuleMappingRegistry::EncodedRegistry
    self.literal_mapping_registry = CatalogRuleMappingRegistry::LiteralRegistry
    init_methods
  end

private

  def init_methods
    Methods.each do |definitions|
      opt = definitions.last
      if opt[:request_style] == :document
        add_document_operation(*definitions)
      else
        add_rpc_operation(*definitions)
        qname = definitions[0]
        name = definitions[2]
        if qname.name != name and qname.name.capitalize == name.capitalize
          ::SOAP::Mapping.define_singleton_method(self, qname.name) do |*arg|
            __send__(name, *arg)
          end
        end
      end
    end
  end
end

