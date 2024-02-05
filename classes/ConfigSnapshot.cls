public class ConfigSnapshot implements IConfigStep {
    public static void execute(){
    
        try{
            
        String baseURL = URL.getOrgDomainUrl().toExternalForm();
    	String newURL = baseURL.replace('.my.salesforce.com','');
    	String snapURL = '.visualforce.com/apex/Credit_Memo_Snapshot?';
    	String myInstance = '--c.na123';
   
            
        // Query for Screen Section ID //
        List<nForce__Screen_Section__c> ss = [SELECT ID FROM nForce__Screen_Section__c WHERE Name = 'Snapshot Loan VF Page'];
        String ssid = '';
        for (nFORCE__Screen_Section__c screensection : ss) {
            ssid += String.valueOf(screensection);
        }
        String ssidString = ssid.substringafter('nFORCE__Screen_Section__c:{Id=');
        String ssidStringAfter = ssidString.substringbefore('}');
    	String newID = 'id={{FIELD=LLC_BI__Loan__c.Id}}&amp;ssid=';
    	
        
        String finalURL = newURL + myInstance + snapURL + newID + ssidStringAfter;
        String finalLink = finalURL.replace('--llc-bi.visualforce.com', '');
         DemoStepUtility.updateSetupStatusToComplete('ConfigSnapshot', null);
        }catch(Exception e){
            DemoStepUtility.updateStepWithError('ConfigSnapshot', e.getMessage());
        }

    }
    
}