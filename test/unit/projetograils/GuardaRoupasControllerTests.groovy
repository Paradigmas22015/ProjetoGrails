package projetograils



import org.junit.*
import grails.test.mixin.*

@TestFor(GuardaRoupasController)
@Mock(GuardaRoupas)
class GuardaRoupasControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/guardaRoupas/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.guardaRoupasInstanceList.size() == 0
        assert model.guardaRoupasInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.guardaRoupasInstance != null
    }

    void testSave() {
        controller.save()

        assert model.guardaRoupasInstance != null
        assert view == '/guardaRoupas/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/guardaRoupas/show/1'
        assert controller.flash.message != null
        assert GuardaRoupas.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/guardaRoupas/list'

        populateValidParams(params)
        def guardaRoupas = new GuardaRoupas(params)

        assert guardaRoupas.save() != null

        params.id = guardaRoupas.id

        def model = controller.show()

        assert model.guardaRoupasInstance == guardaRoupas
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/guardaRoupas/list'

        populateValidParams(params)
        def guardaRoupas = new GuardaRoupas(params)

        assert guardaRoupas.save() != null

        params.id = guardaRoupas.id

        def model = controller.edit()

        assert model.guardaRoupasInstance == guardaRoupas
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/guardaRoupas/list'

        response.reset()

        populateValidParams(params)
        def guardaRoupas = new GuardaRoupas(params)

        assert guardaRoupas.save() != null

        // test invalid parameters in update
        params.id = guardaRoupas.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/guardaRoupas/edit"
        assert model.guardaRoupasInstance != null

        guardaRoupas.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/guardaRoupas/show/$guardaRoupas.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        guardaRoupas.clearErrors()

        populateValidParams(params)
        params.id = guardaRoupas.id
        params.version = -1
        controller.update()

        assert view == "/guardaRoupas/edit"
        assert model.guardaRoupasInstance != null
        assert model.guardaRoupasInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/guardaRoupas/list'

        response.reset()

        populateValidParams(params)
        def guardaRoupas = new GuardaRoupas(params)

        assert guardaRoupas.save() != null
        assert GuardaRoupas.count() == 1

        params.id = guardaRoupas.id

        controller.delete()

        assert GuardaRoupas.count() == 0
        assert GuardaRoupas.get(guardaRoupas.id) == null
        assert response.redirectedUrl == '/guardaRoupas/list'
    }
}
