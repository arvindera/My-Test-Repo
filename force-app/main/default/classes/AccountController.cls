public class AccountController {
    //my first commit comment
    // my second commit comment
    //my third commit comment
    //my forth comment
    @AuraEnabled
    public static List<Account> getAccounts()
    {
        return [SELECT Id, name, industry, Type, NumberOfEmployees, TickerSymbol, Phone FROM Account ORDER BY createdDate ASC];
    }

}