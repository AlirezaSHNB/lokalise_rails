RSpec.describe LokaliseRails do
    it 'import rake task is callable' do
        expect(import_executor).to output(/complete!/).to_stdout
    end
end