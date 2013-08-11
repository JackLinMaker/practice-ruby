module MyForwardable
  def def_delegators(ivar, *delegated_methods)
    delegated_methods.each do |m|
      define_methods.each |*a, &b|
       obj = instance_variable_get(ivar)
       obj.send(m, *a, &b)
      end
    end
  end
end