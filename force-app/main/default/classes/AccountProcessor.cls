public class AccountProcessor {
    @future
    public static void countContacts (List<Id> accountIds){
        List<Account> listAcc = new List<Account>();
        for(Account acc : [select id, (select id from Contacts) from Account where ID IN : accountIds]){
            acc.Number_of_Contacts__c = acc.Contacts.size();
            listAcc.add(acc);
        }
    }

}