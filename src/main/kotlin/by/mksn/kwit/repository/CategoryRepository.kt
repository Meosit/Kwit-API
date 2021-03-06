package by.mksn.kwit.repository

import by.mksn.kwit.entity.Category
import by.mksn.kwit.entity.support.CategoryStats
import by.mksn.kwit.entity.support.CategoryType
import org.springframework.data.domain.Page
import org.springframework.data.domain.Pageable
import org.springframework.data.repository.PagingAndSortingRepository
import org.springframework.data.repository.query.Param
import org.springframework.stereotype.Repository
import java.sql.Timestamp

@Repository
interface CategoryRepository :
        PagingAndSortingRepository<Category, Long>,
        PersonalCrudRepository<Category, Long> {

    fun findByUserIdOrderByIdAsc(id: Long, pageable: Pageable): Page<Category>

    fun findByUserIdOrderByIdAsc(id: Long): List<Category>

    fun findByUserIdAndType(id: Long, type: CategoryType): List<Category>

    fun fetchCategoryStats(
            @Param("userId") userId: Long,
            @Param("currencyId") currencyId: Long,
            @Param("categoryType") categoryType: String,
            @Param("startDate") startDate: Timestamp,
            @Param("endDate") endDate: Timestamp
    ): List<CategoryStats>
}