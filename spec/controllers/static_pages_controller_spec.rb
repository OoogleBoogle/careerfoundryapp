require 'rails_helper'


RSpec.describe StaticPagesController, type: :controller do

	describe "GET #index" do
		context "without Devise" do
			it "responds successfully with an HTTP 200 status code" do
	      get :index
	      expect(response).to be_success
	      expect(response).to have_http_status(200)
	    end

	    it "renders the index template" do
	      get :index
	      expect(response).to render_template("index")
	    end

	    it "shows all products" do
	    	products = Product.all
	    	get :index
	    	expect(products).to match_array(@products)
	    end
	  end
  end

  describe 'GET #landing_page' do
  	context 'without devise' do
  		it 'responds successfully' do
  			get :landing_page
  			expect(response).to be_success
  		end

  		it 'renders template' do
  			get :landing_page
  			expect(response).to render_template('landing_page')
  		end

  		it 'retrives 2 products from the array' do
  			products = Product.limit(2)
  			get :landing_page
  			expect(products).to match_array(@products)
  		end
  	end
  end

  describe 'GET #contact' do
  	context 'without Devise' do
  		it 'returns successfully and renders page' do
  			get :contact
  			expect(response).to render_template('contact')
  			expect(response).to be_success
  		end
  	end
  end
end
