package projetograils

class ScreenController {

    def publicPage() {
        render "This is a public page"
    }
    def authenticatedPage() {
        render "This is a authenticated only page"
    }
    def commonPage() {
        render "This is a common role page"
    }
    def royalPage() {
        render "This is a royal role page"
    }

}
