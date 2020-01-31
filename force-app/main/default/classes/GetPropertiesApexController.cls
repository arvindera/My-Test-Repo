public class GetPropertiesApexController {
    private final Property__c prop;
    private number pNum;
    
    public GetPropertiesApexController(ApexPages.StandardController stdController) {
        stdController.addFields(new List<String>{'Beds__c', 'Baths__c', 'Price__c', 'Broker__c', 'Status__c'});
        this.prop = (Property__c)stdController.getRecord();
    }

    public List<Property__c> getProperties () {
        List<Property__c> properties = [
            SELECT Id, Name, Beds__c, Baths__c, Price__c, Broker__c, Status__c FROM Property__c WHERE Id != :prop.Id AND Beds__c = :prop.Beds__c
        ];
        return properties;
    }
}