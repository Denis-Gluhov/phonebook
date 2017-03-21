package phonebook.server.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import phonebook.server.entity.Phonebook;
import phonebook.server.repository.PhonebookRepository;

import java.util.List;

@Service
public class PhonebookServiceImpl implements PhonebookService {

    @Autowired
    private PhonebookRepository phonebookRepository;


    public List<Phonebook> getAll() {
        return phonebookRepository.findAll();
    }

    public Phonebook getById(long id) {
        return phonebookRepository.findOne(id);
    }

    public Phonebook save(Phonebook phonebook) {
        return phonebookRepository.saveAndFlush(phonebook);
    }

    public void remove(long id) {
        phonebookRepository.delete(id);
    }
}
