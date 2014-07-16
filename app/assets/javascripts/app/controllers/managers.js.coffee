$ = Spine.$
Manager = App.Manager

$.fn.item = ->
  elementID   = $(@).data('id')
  elementID or= $(@).parents('[data-id]').data('id')
  Manager.find(elementID)

class New extends Spine.Controller
  events:
    'click [data-type=back]': 'back'
    'submit form': 'submit'
    
  constructor: ->
    super
    @active @render
    
  render: ->
    @html @view('managers/new')

  back: ->
    @navigate '/managers'

  submit: (e) ->
    e.preventDefault()
    manager = Manager.fromForm(e.target).save()
    @navigate '/managers', manager.id if manager

class Edit extends Spine.Controller
  events:
    'click [data-type=back]': 'back'
    'submit form': 'submit'
  
  constructor: ->
    super
    @active (params) ->
      @change(params.id)
      
  change: (id) ->
    @item = Manager.find(id)
    @render()
    
  render: ->
    @html @view('managers/edit')(@item)

  back: ->
    @navigate '/managers'

  submit: (e) ->
    e.preventDefault()
    @item.fromForm(e.target).save()
    @navigate '/managers'

class Show extends Spine.Controller
  events:
    'click [data-type=edit]': 'edit'
    'click [data-type=back]': 'back'

  constructor: ->
    super
    @active (params) ->
      @change(params.id)

  change: (id) ->
    @item = Manager.find(id)
    @render()

  render: ->
    @html @view('managers/show')(@item)

  edit: ->
    @navigate '/managers', @item.id, 'edit'

  back: ->
    @navigate '/managers'

class Index extends Spine.Controller
  events:
    'click [data-type=edit]':    'edit'
    'click [data-type=destroy]': 'destroy'
    'click [data-type=show]':    'show'
    'click [data-type=new]':     'new'

  constructor: ->
    super
    Manager.bind 'refresh change', @render
    Manager.fetch()
    
  render: =>
    managers = Manager.all()
    @html @view('managers/index')(managers: managers)
    
  edit: (e) ->
    item = $(e.target).item()
    @navigate '/managers', item.id, 'edit'
    
  destroy: (e) ->
    item = $(e.target).item()
    item.destroy() if confirm('Sure?')
    
  show: (e) ->
    item = $(e.target).item()
    @navigate '/managers', item.id
    
  new: ->
    @navigate '/managers/new'
    
class App.Managers extends Spine.Stack
  controllers:
    index: Index
    edit:  Edit
    show:  Show
    new:   New
    
  routes:
    '/managers/new':      'new'
    '/managers/:id/edit': 'edit'
    '/managers/:id':      'show'
    '/managers':          'index'
    
  default: 'index'
  className: 'stack managers'