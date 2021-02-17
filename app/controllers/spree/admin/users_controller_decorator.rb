module Spree::Admin::UsersControllerDecorator

  def create
    @user = Spree.user_class.new(user_params)
        if @user.save
          set_roles
          set_stock_locations
          if @user.has_spree_role?(:vendor)
            sl = Spree::StockLocation.new
            sl.name = @user.email
            sl.spree_user_id = @user.id
            sl.save!
            @user.confirm
            @user.stock_locations << sl
          end
          flash[:success] = t('spree.created_successfully')
          redirect_to edit_admin_user_url(@user)
        else
          load_roles
          load_stock_locations

          flash.now[:error] = @user.errors.full_messages.join(", ")
          render :new, status: :unprocessable_entity
        end
  end

  Spree::Admin::UsersController.prepend self
end
