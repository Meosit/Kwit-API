package by.mksn.kwitapi.repository;

import by.mksn.kwitapi.entity.User;
import org.springframework.data.repository.CrudRepository;

public interface UserRepository extends CrudRepository<User, Long> {

    User findByUsername(String username);

}