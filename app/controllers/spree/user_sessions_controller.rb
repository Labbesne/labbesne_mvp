# frozen_string_literal: true

class Spree::UserSessionsController < Devise::SessionsController
  helper 'spree/base', 'spree/store'
  layout "devise"

  include Spree::Core::ControllerHelpers::Auth
  include Spree::Core::ControllerHelpers::Common
  include Spree::Core::ControllerHelpers::Order
  include Spree::Core::ControllerHelpers::Store

  # This is included in ControllerHelpers::Order.  We just want to call
  # it after someone has successfully logged in.
  after_action :set_current_order, only: :create

  def create
    authenticate_spree_user!
    if spree_user_signed_in?
      respond_to do |format|
        format.html do
          flash[:success] = I18n.t('spree.logged_in_succesfully')
          if spree_current_user.has_spree_role?(:admin)
            redirect_to '/shop/admin'
          elsif spree_current_user.has_spree_role?(:vendor)
            redirect_to '/vendor'
          else
            redirect_back_or_default(after_sign_in_path_for(spree_current_user))
          end
        end
        format.js { render success_json }
      end
    else
      respond_to do |format|
        format.html do
          flash.now[:error] = t('devise.failure.invalid')
          render :new
        end
        format.js do
          render json: { error: t('devise.failure.invalid') },
            status: :unprocessable_entity
        end
      end
    end
  end

  def destroy
    super
  end

  protected

  def translation_scope
    'devise.user_sessions'
  end

  private

  def accurate_title
    I18n.t('spree.login')
  end

  def redirect_back_or_default(default)
    if spree_current_user.has_spree_role?(:admin)
      redirect_to '/shop/admin'
    elsif spree_current_user.has_spree_role?(:vendor)
      redirect_to '/vendor'
    else
      redirect_to(session["spree_user_return_to"] || '/')
      session["spree_user_return_to"] = nil
    end
  end

  def after_sign_out_path_for(resource_or_scope)
    main_app.root_path
  end

  def success_json
    {
      json: {
        user: spree_current_user,
        ship_address: spree_current_user.ship_address,
        bill_address: spree_current_user.bill_address
      }.to_json
    }
  end
end
