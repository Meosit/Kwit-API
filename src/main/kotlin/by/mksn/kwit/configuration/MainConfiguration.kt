package by.mksn.kwit.configuration

import by.mksn.kwit.configuration.security.SecurityConfiguration
import by.mksn.kwit.controller.exception.RestExceptionHandler
import org.springframework.boot.autoconfigure.EnableAutoConfiguration
import org.springframework.boot.autoconfigure.web.ErrorAttributes
import org.springframework.boot.builder.SpringApplicationBuilder
import org.springframework.boot.web.support.SpringBootServletInitializer
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.ComponentScan
import org.springframework.context.annotation.Configuration
import org.springframework.context.annotation.Import

@Configuration
@Import(PersistenceConfiguration::class,
        TransactionManagerConfiguration::class,
        ControllerConfiguration::class,
        SecurityConfiguration::class,
        PageRequestConfiguration::class)
@EnableAutoConfiguration(exclude = arrayOf(
        org.springframework.boot.autoconfigure.security.SecurityAutoConfiguration::class,
        org.springframework.boot.autoconfigure.security.SecurityFilterAutoConfiguration::class,
        org.springframework.boot.autoconfigure.security.FallbackWebSecurityAutoConfiguration::class,
        org.springframework.boot.autoconfigure.security.oauth2.OAuth2AutoConfiguration::class))
@ComponentScan("by.mksn.kwit.service.*")
class MainConfiguration : SpringBootServletInitializer() {

    @Bean
    fun responseEntityExceptionHandler(): RestExceptionHandler
            = RestExceptionHandler()

    @Bean
    fun errorAttributes(): ErrorAttributes
            = CustomErrorAttributes()

    @Bean
    fun restExceptionHandler(): RestExceptionHandler
            = RestExceptionHandler()

    override fun configure(builder: SpringApplicationBuilder): SpringApplicationBuilder
            = builder.sources(MainConfiguration::class.java)
}