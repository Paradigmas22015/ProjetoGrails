dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	username = "root"
	password = "root"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
development {
dataSource {
dbCreate = "update"
// servidor instalado localmente
url = "jdbc:mysql://localhost:3306/projetograils"
}
}
test {
dataSource {
dbCreate = "update"
// servidor instalado localmente
url = "jdbc:mysql://localhost:3306/projetograils"
}
}
production {
dataSource {
dbCreate = "update"
// IP do servidor
url = "jdbc:mysql://127.0.0.1:3306/projetograils"
properties {
maxActive = -1
minEvictableIdleTimeMillis=1800000
timeBetweenEvictionRunsMillis=1800000
numTestsPerEvictionRun=3
testOnBorrow=true
testWhileIdle=true
testOnReturn=false
validationQuery="SELECT 1"
jdbcInterceptors="ConnectionState"

}
}
}
}
