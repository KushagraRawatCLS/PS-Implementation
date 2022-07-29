@isTest
public class AccountProcessorTest {
@isTest
    public static void testFuture(){
        List<Id> kk = new List<Id>();
        Account aa = new Account (Name = 'test acc');
        insert aa;
        Contact c = new Contact(LastName = 'ee', Account = aa);
        insert c;
        kk.add(aa.id);
        test.startTest();
        AccountProcessor.countContacts(kk);
        test.stopTest();
    }
}