require "test_helper"

describe OrderItemsController do

  describe "logged in" do
    describe "index" do
      
    end

    describe 'new' do
      it 'succeeds' do
        get new_order_item_path
        must_respond_with :success
      end
    end

    describe 'edit' do
      # need product and order yml fixture data before can add order_item yml fixture data
      it 'succeeds for existing order item id' do
        expect {
          get edit_order_item_path(OrderItem.first)
          must_respond_with :success
        }
      end
      it 'renders 404 not found for non-existant order item id' do

      end
    end
  end
end
