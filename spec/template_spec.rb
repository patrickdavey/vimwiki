require_relative '../template.rb'
require_relative '../options.rb'
require 'rspec-html-matchers'

describe Template do

  context "template" do
    let(:options) { Options.new }
    subject { Template.new(options).to_s }
    before do
      allow(Options).to receive(:arguments).and_return(Options::DEFAULTS)
    end

    it { should have_tag('title', text: 'Index') }
    it { should have_tag('h2', text: 'Index') }
  end
end
