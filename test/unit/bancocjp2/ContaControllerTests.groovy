package bancocjp2



import org.junit.*
import grails.test.mixin.*

@TestFor(ContaController)
@Mock(Conta)
class ContaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/conta/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.contaInstanceList.size() == 0
        assert model.contaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.contaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.contaInstance != null
        assert view == '/conta/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/conta/show/1'
        assert controller.flash.message != null
        assert Conta.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/conta/list'

        populateValidParams(params)
        def conta = new Conta(params)

        assert conta.save() != null

        params.id = conta.id

        def model = controller.show()

        assert model.contaInstance == conta
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/conta/list'

        populateValidParams(params)
        def conta = new Conta(params)

        assert conta.save() != null

        params.id = conta.id

        def model = controller.edit()

        assert model.contaInstance == conta
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/conta/list'

        response.reset()

        populateValidParams(params)
        def conta = new Conta(params)

        assert conta.save() != null

        // test invalid parameters in update
        params.id = conta.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/conta/edit"
        assert model.contaInstance != null

        conta.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/conta/show/$conta.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        conta.clearErrors()

        populateValidParams(params)
        params.id = conta.id
        params.version = -1
        controller.update()

        assert view == "/conta/edit"
        assert model.contaInstance != null
        assert model.contaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/conta/list'

        response.reset()

        populateValidParams(params)
        def conta = new Conta(params)

        assert conta.save() != null
        assert Conta.count() == 1

        params.id = conta.id

        controller.delete()

        assert Conta.count() == 0
        assert Conta.get(conta.id) == null
        assert response.redirectedUrl == '/conta/list'
    }
}
