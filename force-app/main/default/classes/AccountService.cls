public with sharing class AccountService 
{
    public static Account createAccount (string accountName, string accountNumber)
    {
      Account newAcct = new Account(Name=accountName, AccountNumber=accountName);
      System.System.debug('newAcct:'+newAcct);
      return newAcct;  
    }
}