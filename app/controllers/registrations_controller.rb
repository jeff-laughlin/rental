class RegistrationsController < Devise::RegistrationsController
  def new
    @is_landlord = [true, 'true'].include?(params[:is_landlord])
    super
  end

  def create
    build_resource(sign_up_params)

    if [true, 'true'].include?(params[:is_landlord])
      @is_landlord = true
      landlord = Landlord.create(company: params[:company])
      resource.role = landlord
    else
      tenant = Tenant.create
      resource.role = tenant
    end

    resource.save
    yield resource if block_given?
    if resource.persisted?

      if resource.active_for_authentication?
        set_flash_message! :notice, :signed_up
        sign_up(resource_name, resource)
        respond_with resource, location: after_sign_up_path_for(resource)
      else
        set_flash_message! :notice, :"signed_up_but_#{resource.inactive_message}"
        expire_data_after_sign_in!
        respond_with resource, location: after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      set_minimum_password_length
      respond_with resource
    end
  end

  def update
    super
  end

  private

  def after_sign_up_path_for(resource)
    if resource.role_type == 'Landlord'
      properties_path
    else
      tenant_path(resource.role.id)
    end
  end

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :email, :password, :password_confirmation)
  end
end
