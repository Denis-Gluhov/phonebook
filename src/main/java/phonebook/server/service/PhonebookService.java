package phonebook.server.service;


import phonebook.server.entity.Phonebook;

import java.util.List;

public interface PhonebookService {
    List<Phonebook> getAll();
    Phonebook getById(long id);
    Phonebook save(Phonebook phonebook);
    void remove(long id);
}
