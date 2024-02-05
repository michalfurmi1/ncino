/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class InsightsPredictionService {
    global InsightsPredictionService() {

    }
    @InvocableMethod(label='InsightsPrediction' description='Run an Insights Model')
    global static List<niq.InsightsPredictionService.OutputParameters> runInsightsPrediction(List<niq.InsightsPredictionService.InputParameters> request) {
        return null;
    }
global class InputParameters {
    @InvocableVariable(label='Object Id' description='Id of the context object for the Prediction.' required=true)
    global String objectId;
    @InvocableVariable(label='Prediction Lookup Key' description='Lookup Key for the Prediction you want to run.' required=true)
    global String predictionLookupKey;
    global InputParameters() {

    }
}
global class OutputParameters {
    @InvocableVariable(label='Loss Given Default' description='The Loss Given Default for the given loan.' required=false)
    global Double expectedLoss;
    @InvocableVariable(label='Probability of Default' description='The calculated PD value for the given Loan.' required=false)
    global Double lifeTimePD;
    global OutputParameters() {

    }
}
}
