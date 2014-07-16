module CustomersHelper

  def managers_for_select
    Dealer.current.managers.where(fired: false).map { |manager| [fullname(manager), manager.id] }
  end

  def fullname(user)
    "#{user.name} #{user.lastname}"
  end

  def car_for_select
    Dealer.current.cars.where(customer_id: [nil, @customer.id]).map { |car| [car.model, car.id] }
  end

  def status_for_select
    Status.all.map { |s| [s.name, s.id] }
  end

end
