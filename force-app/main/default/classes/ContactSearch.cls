public class ContactSearch 
{
    public static List<Contact> searchForContacts(String lastname, String postalcode)
    {
        List<Contact> Contacts= [select Id, name
                                	from Contact
                                	where Lastname=:lastname
                                		and MailingPostalCode=:postalcode
                                ];
     	return Contacts;
    }
}