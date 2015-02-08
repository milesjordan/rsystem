
require_relative '../lib/rsystem'

describe RSystem do
  it "executes a valid command with no options" do
  	(RSystem::Runner::run 'echo "Hello, world!"').should eql true
  end
end