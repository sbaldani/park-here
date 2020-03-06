ActiveAdmin.register Park do
  permit_params :geolocalization, :types_of_vehicles
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :geolocalization, :types_of_vehicles
  #
  # or
  #
  # permit_params do
  #   permitted = [:geolocalization, :types_of_vehicles]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
