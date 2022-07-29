@isTest
public class DailyLeadProcessorTest {    
    public static String CRON_EXP = '0 0 0 15 3 ? 2022*';    
    static testmethod void testScheduledJob() {   
        List<Lead> Leads = new List<Lead>();
        for (Integer i = 0; i < 200; i++) {           
            Leads.add(new lead(company='Dream force'+i, lastName='rrr'+i));        
        }        insert Leads;    
                    
    Test.startTest();        
        String jobId = System.schedule('ScheduledApexTest',CRON_EXP,new DailyLeadProcessor());
    Test.stopTest();  
    }}