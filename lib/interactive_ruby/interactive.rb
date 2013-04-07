module Interactive
  require 'ruby_cop'
  require 'rspec/autorun'
  def result?(code, specs)
    policy = RubyCop::Policy.new
    ast = RubyCop::NodeBuilder.build(code)
    return @result = "wrong please try again" unless ast || code
    begin 
      eval(code)
    rescue Exception => exc 
      return @result = "Wrong please try again"
    end
    results = specs.map do | spec|
      eval(spec.content)
    end
    @result = results.include?(false) ? "Wrong please try again" : "You are correct"
  end
end
