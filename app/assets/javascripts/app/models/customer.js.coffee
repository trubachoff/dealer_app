class App.Customer extends Spine.Model
  @configure 'Customer', 'name', 'lastname', 'email', 'phone_prefix', 'pone_code', 'phone', 'comment'
  @extend Spine.Model.Ajax