public class snapshotController {
    
    public String finalURL{get; set;}
    
    public void createSnapShot() {
    
    	String baseURL = URL.getOrgDomainUrl().toExternalForm();
    	String newURL = baseURL.replace('.cloudforce.com','');
    	String snapURL = '.visual.force.com/apex/Credit_Memo_Snapshot?';
        
        // Query for Instance ID
        String myInstance = [select InstanceName from Organization limit 1].InstanceName;
        
        
        // Query for Screen Section ID
        // 
        List<nForce__Screen_Section__c> ss = [SELECT ID FROM nForce__Screen_Section__c WHERE Name = 'Snapshot Loan VF Page'];
        String ssid = '';
        for (nFORCE__Screen_Section__c screensection : ss) {
            ssid += String.valueOf(screensection);
        }
        String ssidString = ssid.substringafter('nFORCE__Screen_Section__c:{Id=');
        String ssidStringAfter = ssidString.substringbefore('}');
    	String newID = 'id={{FIELD=LLC_BI__Loan__c.Id}}&amp;ssid=';
    	
        
        finalURL = newURL + '--c.'+ myInstance + snapURL + newID + ssidStringAfter;
        String finalLink = finalURL.replace('--llc-bi.visualforce.com', '');
    }
}