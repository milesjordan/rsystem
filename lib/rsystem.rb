require "rsystem/version"

module RSystem
  class Runner
  	def self.run(command, options={})

  	  # Only set the default options of the haven't already been set
  	  options[:echo] = true unless options.has_key?(:echo)
  	  options[:raise_on_error] = true unless options.has_key?(:raise_on_error)

  	  puts "[#{Time.now}] Executing: #{command}" if options[:echo]

  	  # Remove custom options so we can pass the entire options hash to system()
      sys_options = options.clone
	    sys_options.delete(:echo)
	    sys_options.delete(:raise_on_error)

  	  ret = system(command, sys_options)
  	  if !ret and options[:raise_on_error]
  	  	raise FailedExecutionException, "[#{Time.now}] Error: The executed command returned a failure code."
  	  else
  	  	ret
  	  end
  	end
  end

  class FailedExecutionException < Exception
  end
end
