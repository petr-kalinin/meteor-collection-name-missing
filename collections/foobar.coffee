@Foo = new Mongo.Collection('foo');
@Bar = new Mongo.Collection('bar');

Foo.helpers
    whoami: ->
        "Foo"
        
    foo: ->
        "Foo:foo"
        
Bar.helpers
    whoami: ->
        "Bar"
        
    bar: ->
        "Bar::bar"
        
@check = ->
    foo = Foo._transform {}
    bar = Bar._transform {}
    console.log('Foo name: ' + Foo._name);
    console.log('Bar name: ' + Bar._name);

    console.log("Foo whoami: " + foo.whoami())
    console.log("Foo foo: " + foo.foo())
    console.log("Bar whoami: " + bar.whoami())
    console.log("Bar bar: " + bar.bar())

check()