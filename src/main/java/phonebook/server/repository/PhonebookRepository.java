package phonebook.server.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import phonebook.server.entity.Phonebook;

public interface PhonebookRepository extends JpaRepository<Phonebook, Long> {



}
