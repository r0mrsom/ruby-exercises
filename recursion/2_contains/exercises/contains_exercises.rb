def contains?(hash, search_value)
  # Write a method that recursively searches for a value in a nested hash.
  # It should return `true` if the object contains that value.
  #
  # Examples:
  # contains?({ foo: { bar: "baz" } }, "baz") # true
  # contains?({ foo: { bar: "baz" } }, "egg") # false
  @result ||= false
  for objects in hash.values
     if objects.is_a?(Hash)
       contains?(objects, search_value)
     else
      @result = @result || (objects == search_value)
     end
  end
  @result
end