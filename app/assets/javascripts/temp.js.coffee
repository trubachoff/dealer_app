
###
class SuperC
    constructor: (args...) ->
        @arr = args.slice()
        
    add: (elems...) ->
        @arr = @arr.concat(elems)

    all: () ->
        @arr

    find: (index) ->
        #@arr[@arr.indexOf(el)]
        @arr[index]
    
    where: (query) ->
        return [] if typeof query isnt "object"
        hit = Object.keys(query).length
        @arr.filter (item) ->
            match = 0
            for key, val of query
                match += 1 if item[key] is val
            if match is hit then true else false

    destroy: (index) ->
        @arr.splice(index, 1)


class User extends SuperC
    fio: (id) ->
        name = @find(id).name
        lastname = @find(id).lastname
        if name? or lastname? then "#{name} #{lastname}" else ""
    full_phone: (id) ->
        #phone_code = @find(id).phone_code 
        phone_code = if @find(id).phone_code? then @find(id).phone_code else "863" 
        phone = @find(id).phone
        if phone? then "(#{phone_code}) #{phone}" else ""


class Company extends User
    add_user_to_company: (user) ->
        @add(user)


u = new User(
    {name: "Vasya", lastname: "Petechkin", phone: "123-23-23"},
    {name: "Petya", lastname: "Vasechkin", phone_code: "910"},
)
u.add(
    {name: "Egor", lastname: "Egorkin", age: 23},
    {name: "Ira",  lastname: "Muhina", sex: "female"}
)
#u.destroy(2)
#console.log u.all()
#console.log u.fio(0)
#console.log u.full_phone(1)

c_1 = new Company()
c_1.add_user_to_company u.find 2
c_1.add_user_to_company u.find 3
c_1.add_user_to_company {name: "Abdula", lastname: "Ibn Hasan", phone: "555-01-02"}
console.log c_1.all()
id = 2
console.log c_1.fio id
console.log c_1.full_phone id

###
