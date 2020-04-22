RSpec.describe 'POST /api/comments/:id', type: :request do

    describe 'successfully' do
      before do
        post "/api/comments/#{comments.id}"
      end
  
      it 'returns a 200 response' do
        expect(response).to have_http_status 200
      end
  
      it 'returns correct article' do
        expect(response_json['article']['id']).to eq article.id
      end
    end
  end