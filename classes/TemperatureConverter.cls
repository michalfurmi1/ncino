public class TemperatureConverter {

    // Takes a Fahrenheit temperature and returns the Celsius equivalent.

    public static Decimal FahrenheitToCelsius(Decimal fh) {

        Decimal cs = (fh - 32) * 5/9;
        LLC_BI__Loan__c lo = [Select Id From LLC_BI__Loan__c Where ( LLC_BI__lookupKey__c != null)];

        return cs.setScale(2);

    }

}