require "rsystem/version"

module RSystem
  class Runner
  	def self.run(command, echo=true, options={})
  		puts "[#{Time.now}] Executing: #{command}" if echo
  		system command, options
  	end
  end
end
