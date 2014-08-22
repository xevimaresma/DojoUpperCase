require 'rspec'

require_relative '../lib/dojo'

describe 'run' do

  let(:dojo) { Dojo.new } #descobrir què fa!
  #dojo = Dojo.new

  it 'null should return null' do

    expect(dojo.run(nil)).to be_nil

  end

  it 'empty string should return empty array' do

    result = dojo.run('')
    expect(result).to be_an Array
    expect(result.empty?).to be_truthy

  end

  it 'lowercase char should return array [0]' do
    expect(dojo.run('d').eql? [0]).to be_truthy
  end

  it 'uppercase char should return array [1]' do
    expect(dojo.run('P').eql? [1]).to be_truthy
  end

  it 'two lowercase chars shoud return array [0,0]' do
    expect(dojo.run('dd').eql? [0,0]).to be_truthy
  end

  it 'DoJo should return array [1,0,1,0]' do
    expect(dojo.run('DoJo')).to eql([1,0,1,0])
  end
end