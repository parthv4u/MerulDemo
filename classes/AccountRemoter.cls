
public class AccountRemoters
{
    private String accountName { get; set; }
    global static Account account { get; set; }
    private AccountRemoter() { } // empty constructor
    
    @RemoteAction
    global static Account getAccount(String accountName) {
        account = [SELECT Id,Name, Phone, Type, NumberOfEmployees 
                   FROM Account WHERE Name = :accountName];
        return account;
    }
}