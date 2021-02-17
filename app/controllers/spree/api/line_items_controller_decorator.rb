module Spree::Api::LineItemsControllerDecorator
  def create
    variant = Spree::Variant.find(params[:line_item][:variant_id])
        @line_item = @order.contents.add(
          variant,
          params[:line_item][:quantity] || 1,
          options: line_item_params[:options].to_h
        )
    if @line_item.errors.empty?
      if @order.state == 'complete'
        t = Track.new(spree_order_id: @order.id, spree_line_item_id: @line_item.id, vendor_recieved: false, vendor_sent: false, recieved: false, quantity: @line_item.quantity, spree_user_id: Spree::Product.find(Spree::Variant.find(@line_item.variant_id).product_id).spree_user_id)
        t.save!
      end
      respond_with(@line_item, status: 201, default_template: :show)
    else
      invalid_resource!(@line_item)
    end
  end
  Spree::Api::LineItemsController.prepend self
end
