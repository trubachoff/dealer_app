class App.Manager extends Spine.Model
  @configure 'Manager', 'name', 'lastname', 'email', 'encrypted_password', 'fired'
  @extend Spine.Model.Ajax