require 'rspec'
require 'greek_names'

describe 'GreekNames' do
  describe '.vocative' do

    context 'names ending in "ας"' do
      it 'Should return Κώστα' do
        expect(GreekNames.vocative('Κώστας')).to eql('Κώστα')
      end
      it 'Should return ΑΝΔΡΕΑ' do
        expect(GreekNames.vocative('ΑΝΔΡΕΑΣ')).to eql('ΑΝΔΡΕΑ')
      end
    end

    context 'names ending in "ης"' do
      it 'Should return Αντώνη' do
        expect(GreekNames.vocative('Αντώνης')).to eql('Αντώνη')
      end
      it 'Should return ΔΗΜΗΤΡΗ' do
        expect(GreekNames.vocative('ΔΗΜΗΤΡΗΣ')).to eql('ΔΗΜΗΤΡΗ')
      end
    end

    context 'names ending in "ος|ός"' do
      it 'Should return Γιώργο' do
        expect(GreekNames.vocative('Γιώργος')).to eql('Γιώργο')
      end
      it 'Should return Κωνσταντίνε' do
        expect(GreekNames.vocative('Κωνσταντίνος')).to eql('Κωνσταντίνε')
      end
      it 'Should return Πάνο' do
        expect(GreekNames.vocative('Πάνος')).to eql('Πάνο')
      end
      it 'Should return Τοτό' do
        expect(GreekNames.vocative('Τοτός')).to eql('Τοτό')
      end
    end

    context 'female names' do
      it 'Should return Αγάπη' do
        expect(GreekNames.vocative('Αγάπη')).to eql('Αγάπη')
      end
      it 'Should return ΔΗΜΗΤΡΑ' do
        expect(GreekNames.vocative('ΔΗΜΗΤΡΑ')).to eql('ΔΗΜΗΤΡΑ')
      end
    end
  end
end