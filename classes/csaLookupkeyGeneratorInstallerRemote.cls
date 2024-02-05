public with sharing class csaLookupkeyGeneratorInstallerRemote {

    public class CheckInstall extends nFORCE.RemoteActionController.Endpoint {
        public override virtual Object invoke(Map<String,Object> params) {
            nFORCE.SystemProperties properties = nFORCE.SystemProperties.getInstance();
            return properties.getPropertyAsBoolean(
                nCSA_FRAME.csaConstants.CSASYSTEMPROPERTYCATEGORY,
                csaLookupkeyGeneratorConstants.PROPERTY_INSTALLEDKEY,
                false
            );
        }
    }

    public class Install extends nFORCE.RemoteActionController.Endpoint {
        public override virtual Object invoke(Map<String,Object> params) {
            List<sObject> toInsert = new List<sObject>();

            Id adminGroupId = [SELECT Id FROM nFORCE__Group__c WHERE nFORCE__App__c = 'admin'].Id;

            toInsert.add(nFORCE.SystemProperties.createProperty(
                nCSA_FRAME.csaConstants.CSASYSTEMPROPERTYCATEGORY,
                csaLookupkeyGeneratorConstants.PROPERTY_INSTALLEDKEY,
                csaLookupkeyGeneratorConstants.PROPERTY_INSTALLEDVALUE,
                true
            ));

            toInsert.add(new nFORCE__Route__c(
                Name = csaLookupkeyGeneratorConstants.ROUTE_NAME,
                nFORCE__Topbar__c = nCSA_FRAME.csaConstants.TOPBAR_PAGE,
                nFORCE__Navigation__c = nCSA_FRAME.csaConstants.NAVIGATION_PAGE,
                nFORCE__Sub_Navigation__c = nCSA_FRAME.csaConstants.SUB_NAVIGATION_PAGE,
                nFORCE__Body__c = csaLookupkeyGeneratorConstants.ROUTE_BODY,
                nFORCE__App__c = csaLookupkeyGeneratorConstants.ROUTE_APP,
                nFORCE__lookupKey__c = csaLookupkeyGeneratorConstants.ROUTE_KEY
            ));

            nFORCE__Route_Group__c routeGroup = new nFORCE__Route_Group__c(
                nFORCE__Group__c = adminGroupId,
                nFORCE__Order__c = 1020,
                nFORCE__lookupKey__c = csaLookupkeyGeneratorConstants.ROUTEGROUP_KEY
            );

            routeGroup.nFORCE__Route__r = new nFORCE__Route__c(
                nFORCE__lookupKey__c = csaLookupkeyGeneratorConstants.ROUTE_KEY
            );
            routeGroup.nFORCE__Parent_Route__r = new nFORCE__Route__c(
                nFORCE__lookupKey__c = nCSA_FRAME.csaConstants.ADMINDASHBOARD_ROUTEKEY
            );

            toInsert.add(routeGroup);


            nFORCE.DMLUtility.insertObj(toInsert);
            return null;
        }
    }

    public class Uninstall extends nFORCE.RemoteActionController.Endpoint {
        public override virtual Object invoke(Map<String,Object> params) {
            List<sObject> toDelete = new List<sObject>();

            toDelete.addAll([SELECT
                                    Id
                            FROM
                                    nFORCE__System_Properties__c
                            WHERE
                                    nFORCE__Key__c = :csaLookupkeyGeneratorConstants.PROPERTY_INSTALLEDKEY
                            OR
                                    nFORCE__Category_Name__c = :csaLookupkeyGeneratorConstants.PROPERTY_CATEGORY
                            LIMIT 100]);

            toDelete.addAll([SELECT
                                    Id
                            FROM
                                    nFORCE__Route_Group__c
                            WHERE
                                    nFORCE__Route__r.nFORCE__App__c = :csaLookupkeyGeneratorConstants.ROUTE_APP
                            LIMIT 100]);

            toDelete.addAll([SELECT
                                    Id
                            FROM
                                    nFORCE__Route__c
                            WHERE
                                    nFORCE__App__c = :csaLookupkeyGeneratorConstants.ROUTE_APP
                            LIMIT 100]);

            if(!toDelete.isEmpty()) {
                nFORCE.DMLUtility.deleteObj(toDelete);
            }

            return null;
        }
    }
}