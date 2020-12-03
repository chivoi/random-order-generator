require_relative ("../group")

describe 'group' do
  before(:each) do
    @group = Group.new("Test group")
  end

  it 'should be an instance of a Group' do
    expect(@group).to be_a Group
  end

  it 'should initialize with a name' do
    expect(@group.name).to eq("Test group")
  end

  it 'should have an array of names attribute' do
    expect(@group.names_array).to be_an_instance_of(Array)
  end

  it 'should have a file path as String' do
    expect(@group.file_path).to be_an_instance_of(String)
  end



end