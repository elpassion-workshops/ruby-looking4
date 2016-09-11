require 'rails_helper'

RSpec.describe Query, type: :model do

  describe '#description' do
    context 'given only address' do
      it 'returns address' do
        query = Query.new(address: 'Próżna 8')

        expect(query.description).to eq 'Próżna 8'
      end
    end

    context 'given only keyword' do
      it 'returns keyword' do
        query = Query.new(keyword: 'Lunch')

        expect(query.description).to eq 'Lunch'
      end
    end

    context 'given address and keyword' do
      it 'returns concatenated address and keyword' do
        query = Query.new(keyword: 'Lunch', address: 'Próżna 8')

        expect(query.description).to eq 'Lunch near Próżna 8'
      end
    end
  end

end
