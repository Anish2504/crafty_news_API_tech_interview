RSpec.describe 'POST /api/comments', type: :request do

  let(:user_credentials) { user.create_new_auth_token }

  describe 'POST/api/comments' do
    before do
      post '/api/events',
        params: {
          comments: {
            body: 'This is a nice article!'
          }
        }
        header: user_headers

      end

      it 'should return a 200 response' do
        expect(JSON.parse(response.body)['message'].to eq 'Comment was successfully created'
      end
    end


  
  