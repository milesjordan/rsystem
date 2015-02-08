
require_relative '../lib/rsystem'

describe RSystem do
  it "executes a valid command with no options" do
  	expect(RSystem::Runner::run 'echo "Hello, world!"').to eql true
  end
end