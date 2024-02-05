@isTest(IsParallel=true)
private without sharing class csaTestLookupkeyGeneratorInstallerRemote {

    @isTest
    static void testCheckInstall() {
        nCSA_FRAME.csaTestDataFactory.createForceSystemProperty(
            nCSA_FRAME.csaConstants.CSASYSTEMPROPERTYCATEGORY,
            csaLookupkeyGeneratorConstants.PROPERTY_INSTALLEDKEY,
            csaLookupkeyGeneratorConstants.PROPERTY_INSTALLEDVALUE,
            true,
            null
        );

        Map<String, Object> params = new Map<String, Object>();

        Test.startTest();

        Boolean result = (Boolean)nFORCE.RemoteActionController.invoke(
            'csaLookupkeyGeneratorInstallerRemote.CheckInstall', params
        );

        Test.stopTest();

        System.assertEquals(true, result);
    }

    @isTest
    static void testInstall() {
        nFORCE__Group__c testGroup = nCSA_FRAME.csaTestDataFactory.createGroup('admin');
        nFORCE__Route__c testRoute = nCSA_FRAME.csaTestDataFactory.createRoute(
            null, 'testBody', 'csa-admin-dashboard', nCSA_FRAME.csaConstants.ADMINDASHBOARD_ROUTEKEY
        );
        Map<String, Object> params = new Map<String, Object>();

        Test.startTest();

        nFORCE.RemoteActionController.invoke('csaLookupkeyGeneratorInstallerRemote.Install', params);
        List<nFORCE__System_Properties__c> results = [SELECT Id FROM nFORCE__System_Properties__c LIMIT 15];
        List<nFORCE__Route__c> routes = [SELECT Id FROM nFORCE__Route__c LIMIT 15];
        List<nFORCE__Route_Group__c> routeGroups = [SELECT Id FROM nFORCE__Route_Group__c LIMIT 15];

        Test.stopTest();

        System.assertEquals(1, results.size());
        System.assertEquals(2, routes.size());
        System.assertEquals(1, routeGroups.size());
    }

    @isTest
    static void testUninstall() {
        nCSA_FRAME.csaTestDataFactory.createForceSystemProperty(
            nCSA_FRAME.csaConstants.CSASYSTEMPROPERTYCATEGORY,
            csaLookupkeyGeneratorConstants.PROPERTY_INSTALLEDKEY,
            csaLookupkeyGeneratorConstants.PROPERTY_INSTALLEDVALUE,
            true,
            null
        );

        Map<String, Object> params = new Map<String, Object>();

        Test.startTest();

        nFORCE.RemoteActionController.invoke('csaLookupkeyGeneratorInstallerRemote.Uninstall', params);
        List<nFORCE__System_Properties__c> results = [SELECT Id FROM nFORCE__System_Properties__c LIMIT 1];

        Test.stopTest();

        System.assertEquals(0, results.size());
    }

    @TestSetup
    private static void testSetup() {
        nFORCE.BeanRegistry.getInstance().registerBean(
            'ClassTypeProvider',
            nFORCE.ClassTypeProvider.class,
            Type.forName('ClassTypeProvider')
        );
    }
}