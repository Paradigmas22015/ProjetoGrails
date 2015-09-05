package projetograils



import org.junit.*
import grails.test.mixin.*

@TestFor(RoupaController)
@Mock(Roupa)
class RoupaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/roupa/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.roupaInstanceList.size() == 0
        assert model.roupaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.roupaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.roupaInstance != null
        assert view == '/roupa/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/roupa/show/1'
        assert controller.flash.message != null
        assert Roupa.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/roupa/list'

        populateValidParams(params)
        def roupa = new Roupa(params)

        assert roupa.save() != null

        params.id = roupa.id

        def model = controller.show()

        assert model.roupaInstance == roupa
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/roupa/list'

        populateValidParams(params)
        def roupa = new Roupa(params)

        assert roupa.save() != null

        params.id = roupa.id

        def model = controller.edit()

        assert model.roupaInstance == roupa
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/roupa/list'

        response.reset()

        populateValidParams(params)
        def roupa = new Roupa(params)

        assert roupa.save() != null

        // test invalid parameters in update
        params.id = roupa.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/roupa/edit"
        assert model.roupaInstance != null

        roupa.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/roupa/show/$roupa.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        roupa.clearErrors()

        populateValidParams(params)
        params.id = roupa.id
        params.version = -1
        controller.update()

        assert view == "/roupa/edit"
        assert model.roupaInstance != null
        assert model.roupaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/roupa/list'

        response.reset()

        populateValidParams(params)
        def roupa = new Roupa(params)

        assert roupa.save() != null
        assert Roupa.count() == 1

        params.id = roupa.id

        controller.delete()

        assert Roupa.count() == 0
        assert Roupa.get(roupa.id) == null
        assert response.redirectedUrl == '/roupa/list'
    }
}
