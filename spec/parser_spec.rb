require_relative '../parser.rb'
require_relative '../options.rb'

describe Parser do

  context "template" do
    subject { Parser.new.template }
    before do
      allow(Options).to receive(:arguments).and_return(Options::DEFAULTS)
    end

    it { should have_tag('title', text: 'Index') }
  end
end
