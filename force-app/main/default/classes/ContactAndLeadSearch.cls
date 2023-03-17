public class ContactAndLeadSearch 
{
	public static List<List<sObject>> searchContactsAndLeads(String inputvalue)
    {
        List<List<sObject>> ContactsLeadlist= [Find :inputvalue IN ALL FIELDS
                                              	returning Contact(Name), Lead(Name)
                                              ];
     	return ContactsLeadlist;
    }
}