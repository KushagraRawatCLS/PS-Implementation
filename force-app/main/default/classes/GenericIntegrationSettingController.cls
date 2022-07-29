public with sharing class GenericIntegrationSettingController {
   

    @AuraEnabled
    public static List<Wrapper> getAccountDetails(String accountId){
        Account acc;List<Wrapper> wrapList = new List<Wrapper> (); Integer i=0;
        acc = [select id, Name, Industry,Phone,AccountNumber,website,Type from Account where id=:accountId];
        wrapList.add(new Wrapper('Name',acc.Name,i++));
        wrapList.add(new Wrapper('Industry',acc.Industry,i++));
        wrapList.add(new Wrapper('Phone',acc.Phone,i++));
        wrapList.add(new Wrapper('AccountNumber',acc.AccountNumber,i++));
        wrapList.add(new Wrapper('website',acc.website,i++));
        wrapList.add(new Wrapper('Type',acc.Type,i++));
        return wrapList;
    }
     class Wrapper{
        public Wrapper(String label, String value, Integer i){
            this.label = label;
            this.value = value;
            this.id = i;
        }
        String label;
        String value;
        Integer id;
    }
}