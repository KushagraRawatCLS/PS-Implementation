public class RandomContactFactory {
    public static List<Contact> generateRandomContacts (Integer numnerOfContacts, String lastName){
        List<Contact> listContact = new List<Contact>();
        for (Integer i=0;i<numnerOfContacts; i++){
            listContact.add(new Contact(FirstName = 'Test'+' '+i,LastName = lastName));
        }
        return listContact;
    }

}