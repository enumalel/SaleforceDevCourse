public class AccountHandler {
    public static void insertAccount(Integer value)
    {
        List<Account> addAccounts = new List<Account>();
        Integer N=1;
        While(N<=value){
            Account acc = new Account();
            acc.Name='Acme Inc N' + N;
            acc.AccountNumber='A000n' +N;
            addAccounts.add(acc);
            system.debug(addAccounts);
            N=N+1;
    	}
    	insert addAccounts;  
	}
    public static Account insertNewAccount(string AccountName)
    {
        try
        {
        	Account newacct=new Account(Name=AccountName);
            insert newacct;
            return newacct;
        }
        catch (DmlException e)
        {
            system.debug('DML exception occured:'+ e.getMessage());
            return null;
        }
        
    }
}