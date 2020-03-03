public class AccountController {
    //my first commit comment
    // my second commit comment
    @AuraEnabled
    public static List<Account> getAccounts()
    {
        return [SELECT Id, name, industry, Type, NumberOfEmployees, TickerSymbol, Phone FROM Account ORDER BY createdDate ASC];
    }

}