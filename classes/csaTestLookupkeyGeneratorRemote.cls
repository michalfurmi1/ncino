@isTest(IsParallel=true)
private without sharing class csaTestLookupkeyGeneratorRemote {

    @isTest
    static void testGetRecords_nFORCE() {
        nFORCE__Group__c testGroup = nCSA_FRAME.csaTestDataFactory.createGroup('admin');

        Map<String, Object> params = new Map<String, Object>{
            'objName' => 'nFORCE__Group__c'
        };

        Test.startTest();

        List<sObject> results = (List<sObject>)nFORCE.RemoteActionController.invoke(
            'csaLookupkeyGeneratorRemote.GetRecords', params
        );

        Test.stopTest();

        System.assertEquals(1, results.size(), 'Ensure record is found with no key');
    }

    @isTest
    static void testGetRecords_LLC_BI() {
        LLC_BI__DocManager__c testDocMan = nCSA_FRAME.csaTestDataFactory.createDocManager('llc_bi__loan');
        
        Map<String, Object> params = new Map<String, Object>{
            'objName' => 'LLC_BI__DocManager__c'
        };

        Test.startTest();

        List<sObject> results = (List<sObject>)nFORCE.RemoteActionController.invoke(
            'csaLookupkeyGeneratorRemote.GetRecords', params
        );

        Test.stopTest();

        System.assertEquals(1, results.size(), 'Ensure record is found with no key');
    }

    @isTest
    static void testGetRecords_nFORMS() {
        nFORMS__Form_Template__c testForm = new nFORMS__Form_Template__c(
            Name = 'Test Form',
            nFORMS__Output_Type__c = 'PDF',
            nFORMS__Primary_Object__c = 'LLC_BI__Loan__c'
        );
        insert testForm;

        Map<String, Object> params = new Map<String, Object>{
            'objName' => 'nFORMS__Form_Template__c'
        };

        Test.startTest();

        List<sObject> results = (List<sObject>)nFORCE.RemoteActionController.invoke(
            'csaLookupkeyGeneratorRemote.GetRecords', params
        );

        Test.stopTest();

        System.assertEquals(1, results.size(), 'Ensure record is found with no key');
    }

    @isTest
    static void testBuildKeys_nFORCE() {
        nFORCE__Group__c testGroup = nCSA_FRAME.csaTestDataFactory.createGroup('admin');

        Map<String, Object> params = new Map<String, Object>{
            'objName' => 'nFORCE__Group__c',
            'recordIds' => '["' + testGroup.Id + '"]'
        };

        Test.startTest();

        nFORCE.RemoteActionController.invoke('csaLookupkeyGeneratorRemote.BuildKeys', params);
        nFORCE__Group__c result = [SELECT Id, nFORCE__lookupKey__c FROM nFORCE__Group__c LIMIT 1];

        Test.stopTest();

        System.assertNotEquals(null, result, 'Ensure records lookupkey was filled out');
    }

    @isTest
    static void testBuildKeys_LLC_BI() {
        LLC_BI__DocManager__c testDocMan = nCSA_FRAME.csaTestDataFactory.createDocManager('llc_bi__loan');
        
        Map<String, Object> params = new Map<String, Object>{
            'objName' => 'LLC_BI__DocManager__c',
            'recordIds' => '["' + testDocMan.Id + '"]'
        };

        Test.startTest();

        nFORCE.RemoteActionController.invoke('csaLookupkeyGeneratorRemote.BuildKeys', params);
        LLC_BI__DocManager__c result = [SELECT Id, LLC_BI__lookupKey__c FROM LLC_BI__DocManager__c LIMIT 1];

        Test.stopTest();

        System.assertNotEquals(null, result, 'Ensure records lookupkey was filled out');
    }

    @isTest
    static void testBuildKeys_nFORMS() {
        nFORMS__Form_Template__c testForm = new nFORMS__Form_Template__c(
            Name = 'Test Form',
            nFORMS__Output_Type__c = 'PDF',
            nFORMS__Primary_Object__c = 'LLC_BI__Loan__c'
        );
        insert testForm;

        Map<String, Object> params = new Map<String, Object>{
            'objName' => 'nFORMS__Form_Template__c',
            'recordIds' => '["' + testForm.Id + '"]'
        };

        Test.startTest();

        nFORCE.RemoteActionController.invoke('csaLookupkeyGeneratorRemote.BuildKeys', params);
        nFORMS__Form_Template__c result = [SELECT Id, nFORMS__lookupKey__c FROM nFORMS__Form_Template__c LIMIT 1];

        Test.stopTest();

        System.assertNotEquals(null, result, 'Ensure records lookupkey was filled out');
    }

    @isTest
    static void testCheckForDuplicates_nFORCE() {
        nFORCE__Group__c testGroup1 = nCSA_FRAME.csaTestDataFactory.createGroup('admin');
        testGroup1.nFORCE__lookupKey__c = '1234567890';
        nFORCE__Group__c testGroup2 = nCSA_FRAME.csaTestDataFactory.createGroup('loan');
        testGroup2.nFORCE__lookupKey__c = '1234567890';

        List<nFORCE__Group__c> toUpdate = new List<nFORCE__Group__c>{
            testGroup1, testGroup2
        };

        update(toUpdate);

        Map<String, Object> params = new Map<String, Object>{
            'objName' => 'nFORCE__Group__c'
        };

        Test.startTest();

        List<sObject> results = (List<sObject>)nFORCE.RemoteActionController.invoke(
            'csaLookupkeyGeneratorRemote.CheckForDuplicates', params
        );

        Test.stopTest();

        System.assertEquals(2, results.size(), 'Ensure records are found with dupe keys');
    }

    @isTest
    static void testCheckForDuplicates_LLC_BI() {
        LLC_BI__DocManager__c testDocMan1 = nCSA_FRAME.csaTestDataFactory.createDocManager('llc_bi__loan');
        testDocMan1.LLC_BI__lookupKey__c = '1234567890';
        LLC_BI__DocManager__c testDocMan2 = nCSA_FRAME.csaTestDataFactory.createDocManager('llc_bi__loan');
        testDocMan2.LLC_BI__lookupKey__c = '1234567890';

        List<LLC_BI__DocManager__c> toUpdate = new List<LLC_BI__DocManager__c>{
            testDocMan1, testDocMan2
        };

        update(toUpdate);
        
        Map<String, Object> params = new Map<String, Object>{
            'objName' => 'LLC_BI__DocManager__c'
        };

        Test.startTest();

        List<sObject> results = (List<sObject>)nFORCE.RemoteActionController.invoke(
            'csaLookupkeyGeneratorRemote.CheckForDuplicates', params
        );

        Test.stopTest();

        System.assertEquals(2, results.size(), 'Ensure records are found with dupe keys');
    }

    @isTest
    static void testGetObjectList() {
        Map<String, Object> params = new Map<String, Object>();

        Test.startTest();

        Map<String, String> results = (Map<String, String>)nFORCE.RemoteActionController.invoke(
            'csaLookupkeyGeneratorRemote.GetObjectList', params
        );

        Test.stopTest();

        System.assertEquals(55, results.size(), 'Ensure full list of Objects is returned');
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