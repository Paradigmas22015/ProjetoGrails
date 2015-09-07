package projetograils

class SecUser {

	transient springSecurityService

	String username
	String password
	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	//static belongsTo = [guardaroupas: GuardaRoupas]	

	static constraints = {
		username blank: false, unique: true
		password blank: false
		//guardaroupas unique: true
		//guardaroupas nullable: true
	}

	static mapping = {
		password column: '`password`'
		tablePerHierarchy false
	}

	Set<SecRole> getAuthorities() {
		SecUserSecRole.findAllBySecUser(this).collect { it.secRole } as Set
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService.encodePassword(password)
	}
}
