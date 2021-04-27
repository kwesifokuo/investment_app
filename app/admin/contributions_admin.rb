Trestle.resource(:contributions) do
  menu do
    item :contributions, icon: "fa fa-star"
  end

  # Customize the table columns shown on the index view.
  #
  # table do
  #   column :name
  #   column :created_at, align: :center
  #   actions
  # end

  # Customize the form fields shown on the new/edit views.
  #
  customers_array = Customer.all.map { |cust| [cust.name, cust.id] } 
  periods = ['JAN 2021', 'FEB 2021', 'MAR 2021', 'APR 2021', 'MAY 2021', 'JUN 2021', 'JUL 2021', 'AUG 2021']

  form do |contribution|
    #text_field :name
    select :customer_id, options_for_select(customers_array)
    select :contribution_period, options_for_select(periods)
    number_field :amount, step: :any # value: number_to_currency(amount.to_f, delimiter: '', unit: ''), 
    date_field :contribution_date
  
    # row do
    #   col { datetime_field :updated_at }
    #   col { datetime_field :created_at }
    # end
  end

  # By default, all parameters passed to the update and create actions will be
  # permitted. If you do not have full trust in your users, you should explicitly
  # define the list of permitted parameters.
  #
  # For further information, see the Rails documentation on Strong Parameters:
  #   http://guides.rubyonrails.org/action_controller_overview.html#strong-parameters
  #
  # params do |params|
  #   params.require(:contribution).permit(:name, ...)
  # end
end
