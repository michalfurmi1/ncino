Global with sharing class MockIdScanXpkg extends nFORCE.ACrossPackageService{
    global MockIdScanXPkg() {
        addSupportedInputParameter(
            PARAM_ID_DOCUMENT_FRONT,
            true,
            String.class,
            null,
            null
        );
        addSupportedInputParameter(
            PARAM_ID_DOCUMENT_BACK,
            false,
            String.class,
            null,
            null
        );
        addSupportedInputParameter(
            PARAM_SELF_PORTRAIT,
            false,
            String.class,
            null,
            null
        );
        addSupportedInputParameter(
            PARAM_DOCUMENT_TYPE,
            true,
            String.class,
            null,
            null
        );
        addSupportedInputParameter(
            PARAM_ISSUING_COUNTRY,
            true,
            String.class,
            null,
            null
        );
        addSupportedInputParameter(
            PARAM_IP_ADDRESS,
            false,
            String.class,
            null,
            null
        );
        addSupportedInputParameter(
            PARAM_UC_TESTING,
            false,
            String.class,
            null,
            null
        );
    }

    public virtual override void execute() {
        Map<String, Object> params = generateParamsMap();

         String successTransactionDetail =
            '[{' +
                '"Status": "success",' +
                '"Message": "ID Approved",' +
                '"SuccessCode": 100,' +
                '"Response": {' +
                '"Score": 600,' +
                '"IssueDate": "2019-01-01",' +
                '"ExpirationDate": "2025-06-17",' +
                '"DocumentType": "Driver License",' +
                '"DocumentNumber": "12345",' +
                '"FirstName": "Jane",' +
                '"LastName": "Doe",' +
                '"StreetAddress": "6770 Parker Farm Drive",' +
                '"City": "Wilmington",' +
                '"State": "NC",' +
                '"ZipCode": "28405",' +
                '"BirthDate": "1975-06-17"' +
                '}' +
                '}]';

        Map<String, Object> output = new Map<String, Object>();

        nFUSE__Transaction_Log__c transactionLog = new nFUSE__Transaction_Log__c();
        transactionLog.nFUSE__Action__c = 'Mock ID Scan';
        transactionLog.nFUSE__Api_Version__c = '3';
        transactionLog.nFUSE__App_Plugin__c = 'Mock App Plugin';
        transactionLog.nFUSE__External_Id__c = (String)params.get('front');
        transactionLog.nFUSE__Primary_Object_Id__c = 'test';
        transactionLog.nFUSE__Requested_By_User_Id__c = '1';
        transactionLog.nFUSE__Transaction_Status__c = 'success';
        transactionLog.nFUSE__Transaction_Detail__c = successTransactionDetail;
        nFORCE.DmlUtility.insertObj(transactionLog);

        output.put('message', successTransactionDetail);
        output.put('isSuccessful', true);
        output.put('ExternalId', (String)params.get('front'));

        setOutputParameter(PARAM_OUTPUT, output);
    }

    @TestVisible
    private Map<String, Object> generateParamsMap() {
        Map<String, Object> params = new Map<String, Object>();
        params.put(PARAM_ID_DOCUMENT_FRONT, (String) this.getInputParameter(PARAM_ID_DOCUMENT_FRONT));
        params.put(PARAM_ID_DOCUMENT_BACK, (String) this.getInputParameter(PARAM_ID_DOCUMENT_BACK));
        params.put(PARAM_SELF_PORTRAIT, (String) this.getInputParameter(PARAM_SELF_PORTRAIT));
        params.put(PARAM_IP_ADDRESS, (String) this.getInputParameter(PARAM_IP_ADDRESS));
        params.put(PARAM_ISSUING_COUNTRY, (String) this.getInputParameter(PARAM_ISSUING_COUNTRY));
        params.put(PARAM_DOCUMENT_TYPE, (String) this.getInputParameter(PARAM_DOCUMENT_TYPE));
        params.put(PARAM_UC_TESTING, (String) this.getInputParameter(PARAM_UC_TESTING));

        return params;
    }

    @TestVisible
    private static final String
        PARAM_ID_DOCUMENT_FRONT = 'front',
        PARAM_ID_DOCUMENT_BACK = 'back',
        PARAM_ISSUING_COUNTRY = 'issuingCountry',
        PARAM_DOCUMENT_TYPE = 'documentType',
        PARAM_SELF_PORTRAIT = 'face',
        PARAM_IP_ADDRESS = 'ipAddress',
        PARAM_UC_TESTING = 'uc-testing',
        PARAM_OUTPUT = 'output';
}