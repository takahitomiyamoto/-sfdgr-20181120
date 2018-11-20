public with sharing class SelectController {
    public List<Contact> getContacts() {
        List<Contact> results = new List<Contact>();
        for (Account acc : [
            SELECT Id, Name, (
                SELECT Name
                FROM Contacts
            )
            FROM Account
            LIMIT 1000
        ]) {
            results.addAll(acc.Contacts);
        }
        return results;
    }
}