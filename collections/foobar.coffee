@Foo = new Mongo.Collection('foo');
@Bar = new Mongo.Collection('bar');

@check = ->
    console.log('Foo name: ' + Foo._name);
    console.log('Bar name: ' + Bar._name);

check()