/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class ShermanCalculation {
    global ShermanCalculation() {

    }
    @InvocableMethod(label='Sherman Calculation' description='Create and process a call to the Sherman service')
    global static List<SCALC.ShermanCalculation.OutputParams> shermanCalculation(List<SCALC.ShermanCalculation.InputParams> inParams) {
        return null;
    }
global class InputParams {
    @InvocableVariable(label='Context Id' description='The context ID that will be processed in the action' required=true)
    global Id contextId;
    @InvocableVariable(label='Interest Rate' description='If provided, this value should be used instead of the interest rate specified on the loan/pricing option for the inLOAN_BUILDER Sherman calculation' required=false)
    global Decimal interestRate;
    @InvocableVariable(label='Persist Data' description='If true, the context object will be updated based on results from the action' required=false)
    global Boolean persistData;
    @InvocableVariable(label='Process HCM Payload' description='If true, the type of payload that will be processed will be inHCM' required=false)
    global Boolean processHCM;
    @InvocableVariable(label='Process HPML Payload' description='If true, the type of payload that will be processed will be inHPML' required=false)
    global Boolean processHPML;
    @InvocableVariable(label='Request XML Only' description='If true, request XML will be generated without updating the context object' required=false)
    global Boolean requestXMLOnly;
    global InputParams() {

    }
}
global class OutputParams {
    @InvocableVariable(label='Context Id' description='The context id that was processed' required=false)
    global String contextId;
    @InvocableVariable(label='Request XML' description='The generated request XML' required=false)
    global String requestXML;
    @InvocableVariable(label='Response XML' description='The generated response XML' required=false)
    global String responseXML;
    global OutputParams() {

    }
}
}