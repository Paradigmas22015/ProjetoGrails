package projetograils



import org.junit.*
import grails.test.mixin.*

/**
 * SapatoControllerTests
 * A unit test class is used to test individual methods or blocks of code without considering the surrounding infrastructure
 */
@TestFor(SapatoController)
@Mock(Sapato)
class SapatoControllerTests {


    def populateValidParams(params) {
      assert params != null
      // TODO: Populate valid properties like...
      //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/sapato/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.sapatoInstanceList.size() == 0
        assert model.sapatoInstanceTotal == 0
    }

    void testCreate() {
       def model = controller.create()

       assert model.sapatoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.sapatoInstance != null
        assert view == '/sapato/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/sapato/show/1'
        assert controller.flash.message != null
        assert Sapato.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/sapato/list'


        populateValidParams(params)
        def sapato = new Sapato(params)

        assert sapato.save() != null

        params.id = sapato.id

        def model = controller.show()

        assert model.sapatoInstance == sapato
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/sapato/list'


        populateValidParams(params)
        def sapato = new Sapato(params)

        assert sapato.save() != null

        params.id = sapato.id

        def model = controller.edit()

        assert model.sapatoInstance == sapato
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/sapato/list'

        response.reset()


        populateValidParams(params)
        def sapato = new Sapato(params)

        assert sapato.save() != null

        // test invalid parameters in update
        params.id = sapato.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/sapato/edit"
        assert model.sapatoInstance != null

        sapato.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/sapato/show/$sapato.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        sapato.clearErrors()

        populateValidParams(params)
        params.id = sapato.id
        params.version = -1
        controller.update()

        assert view == "/sapato/edit"
        assert model.sapatoInstance != null
        assert model.sapatoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/sapato/list'

        response.reset()

        populateValidParams(params)
        def sapato = new Sapato(params)

        assert sapato.save() != null
        assert Sapato.count() == 1

        params.id = sapato.id

        controller.delete()

        assert Sapato.count() == 0
        assert Sapato.get(sapato.id) == null
        assert response.redirectedUrl == '/sapato/list'
    }
}
