package by.mksn.kwit.controller

import by.mksn.kwit.configuration.security.Auth
import by.mksn.kwit.configuration.security.UserDetails
import by.mksn.kwit.entity.support.BaseEntity
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.web.bind.annotation.*
import java.io.Serializable
import javax.validation.Valid

@RestController
interface CrudController<E : BaseEntity<ID>, ID : Serializable> {

    @PostMapping("")
    fun create(@Valid @RequestBody entity: E, @Auth auth: UserDetails): E

    @GetMapping("{id}")
    fun getById(@PathVariable("id") id: ID?, @Auth auth: UserDetails): E

    @PutMapping("{id}")
    fun update(@PathVariable("id") id: ID?, @Valid @RequestBody entity: E, @Auth auth: UserDetails): E

    @DeleteMapping("{id}")
    fun delete(@PathVariable("id") id: ID?, @Auth auth: UserDetails)

    @GetMapping("")
    fun getAll(@Auth auth: UserDetails, pageable: Pageable): Page<E>

}