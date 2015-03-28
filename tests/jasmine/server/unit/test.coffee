describe "Foo", ->
    it "test", ->
        check()
        expect(Foo._name).toBe("foo")
        expect(Bar._name).toBe("bar")
        