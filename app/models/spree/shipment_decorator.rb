module Spree::ShipmentDecorator

  def can_transition_from_pending_to_ready?
    order.can_ship? &&
      inventory_units.all? { |iu| iu.shipped? || iu.allow_ship? || iu.canceled? } &&
      (order.paid? || !Spree::Config[:require_payment_to_ship]) &&
      (order.vendor_state)
  end

Spree::Shipment.prepend self
end
