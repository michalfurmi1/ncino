public with sharing class csaLookupkeyGeneratorRemote {

    public class GetRecords extends nFORCE.RemoteActionController.Endpoint {
        public override virtual Object invoke(Map<String, Object> params) {
            String objName = (String)params.get(OBJNAME);
            String queryValue = SELECTVALUE;
            String keyValue = nCSA_FRAME.csaConstants.BLANK;

            if(objName.contains(NFORCEPREFIX)) {
                keyValue = NFORCELOOKUPKEY;
            } else if(objName.contains(LLCBIPREFIX)) {
                keyValue = LLCBILOOKUPKEY;
            } else if(objName.contains(NFORMSPREFIX)) {
                keyValue = NFORMSLOOKUPKEY;
            }

            queryValue += keyValue + FROMVALUE + objName +
                            WHEREVALUE + keyValue + KEYCHECKVALUE + LIMITVALUE;

            List<sObject> results = Database.query(queryValue);

            return results;
        }
    }

    public class BuildKeys extends nFORCE.RemoteActionController.Endpoint {
        public override virtual Object invoke(Map<String, Object> params) {
            String objName = (String)params.get(OBJNAME);
            SObjectType objResult = Schema.getGlobalDescribe().get(objName);
            List<sObject> toUpdate = new List<sObject>();

            List<String> records = String.valueOf(
                params.get(RECORDIDS)
            ).removeEnd(DOUBLEQUOTEBRACKET).removeStart(BRACKETDOUBLEQUOTE).split(QUOTECOMMAQUOTE);

            for(String record: records) {
                sObject result = objResult.newSObject(record);
                if(objName.contains(NFORCEPREFIX)) {
                    result.put(
                        NFORCELOOKUPKEY,
                        nCSA_FRAME.csaUtility.generateRandomString(
                            nCSA_FRAME.csaConstants.ALPHANUMBERSFORRANDOMIZER, 18, null
                        )
                    );
                } else if(objName.contains(LLCBIPREFIX)) {
                    result.put(
                        LLCBILOOKUPKEY,
                        nCSA_FRAME.csaUtility.generateRandomString(
                            nCSA_FRAME.csaConstants.ALPHANUMBERSFORRANDOMIZER, 18, null
                        )
                    );
                } else if(objName.contains(NFORMSPREFIX)) {
                    result.put(
                        NFORMSLOOKUPKEY,
                        nCSA_FRAME.csaUtility.generateRandomString(
                            nCSA_FRAME.csaConstants.ALPHANUMBERSFORRANDOMIZER, 18, null
                        )
                    );
                }
                toUpdate.add(result);
            }

            nFORCE.DMLUtility.updateObj(toUpdate);
            return null;
        }
    }

    public class CheckForDuplicates extends nFORCE.RemoteActionController.Endpoint {
        public override virtual Object invoke(Map<String, Object> params) {
            String objName = (String)params.get(OBJNAME);
            List<String> dupKey = new List<String>();
            List<sObject> results = new List<sObject>();

            String groupQuery = SELECTGROUPVALUE;
            String queryValue = SELECTVALUE;
            String keyValue = nCSA_FRAME.csaConstants.BLANK;

            if(objName.contains(NFORCEPREFIX)) {
                keyValue = NFORCELOOKUPKEY;
            } else if(objName.contains(LLCBIPREFIX)) {
                keyValue = LLCBILOOKUPKEY;
            }

            groupQuery += keyValue + COUNTVALUE + FROMVALUE + objName +
                            GROUPBYVALUE + keyValue;

            AggregateResult[] groupedResults = Database.query(groupQuery);

            for(AggregateResult ar: groupedResults) {
                if(ar.get(EXPRESION) != 1) {
                    dupKey.add((String)ar.get(keyValue));
                }
            }

            queryValue += keyValue + FROMVALUE + objName +
                            WHEREVALUE + keyValue + INVALUE +
                            keyValue + NOTKEYCHECKVALUE + LIMITVALUE;

            if(!dupKey.isEmpty()) {
                results = Database.query(queryValue);
            }

            return results;
        }
    }

    public class GetObjectList extends nFORCE.RemoteActionController.Endpoint {
        public override virtual Object invoke(Map<String, Object> params) {
            Map<String, String> results = new Map<String, String>();

            results.put(BUDGETAPI, getLabelName(BUDGETAPI));
            results.put(BUDGETLINEITEMAPI, getLabelName(BUDGETLINEITEMAPI));
            results.put(BILLPOINTAPI, getLabelName(BILLPOINTAPI));
            results.put(CONFIGKEYAPI, getLabelName(CONFIGKEYAPI));
            results.put(CONFIGVALUEAPI, getLabelName(CONFIGVALUEAPI));
            results.put(CLOSINGCHECKLISTAPI, getLabelName(CLOSINGCHECKLISTAPI));
            results.put(COLLATERALTYPEAPI, getLabelName(COLLATERALTYPEAPI));
            results.put(CONNECTIONROLEAPI, getLabelName(CONNECTIONROLEAPI));
            results.put(COVENANTTYPEAPI, getLabelName(COVENANTTYPEAPI));
            results.put(CREDITMEMOAPI, getLabelName(CREDITMEMOAPI));
            results.put(DOCCLASSAPI, getLabelName(DOCCLASSAPI));
            results.put(DOCMANAGERAPI, getLabelName(DOCMANAGERAPI));
            results.put(DOCTABAPI, getLabelName(DOCTABAPI));
            results.put(DOCTYPEAPI, getLabelName(DOCTYPEAPI));
            results.put(FIELDCONFIGAPI, getLabelName(FIELDCONFIGAPI));
            results.put(FIELMAPAPI, getLabelName(FIELMAPAPI));
            results.put(FORMSAPI, getLabelName(FORMSAPI));
            results.put(GROUPAPI, getLabelName(GROUPAPI));
            results.put(LAYOUTAPI, getLabelName(LAYOUTAPI));
            results.put(OPTIONAPI, getLabelName(OPTIONAPI));
            results.put(OPTIONRULEAPI, getLabelName(OPTIONRULEAPI));
            results.put(POLICYEXCEPTIONMITIGATIONREASONAPI, getLabelName(POLICYEXCEPTIONMITIGATIONREASONAPI));
            results.put(POLICYEXCEPTIONTEMPLATEAPI, getLabelName(POLICYEXCEPTIONTEMPLATEAPI));
            results.put(PRICINGMATRIXAPI, getLabelName(PRICINGMATRIXAPI));
            results.put(PRODUCTAPI, getLabelName(PRODUCTAPI));
            results.put(PRODUCTFEATURE, getLabelName(PRODUCTFEATURE));
            results.put(PRODUCTLINEAPI, getLabelName(PRODUCTLINEAPI));
            results.put(PRODUCTSTATECONFIGAPI, getLabelName(PRODUCTSTATECONFIGAPI));
            results.put(PRODUCTTYPEAPI, getLabelName(PRODUCTTYPEAPI));
            results.put(RATEAPI, getLabelName(RATEAPI));
            results.put(QUESTIONAPI, getLabelName(QUESTIONAPI));
            results.put(RISKGRADEFACTORAPI, getLabelName(RISKGRADEFACTORAPI));
            results.put(RICKGRADEGROUPAPI, getLabelName(RICKGRADEGROUPAPI));
            results.put(RICKGRADETEMPLATEAPI, getLabelName(RICKGRADETEMPLATEAPI));
            results.put(RISKGRADECRITERIAAPI, getLabelName(RISKGRADECRITERIAAPI));
            results.put(ROLEAPI, getLabelName(ROLEAPI));
            results.put(ROUTEAPI, getLabelName(ROUTEAPI));
            results.put(ROUTEGROUPAPI, getLabelName(ROUTEGROUPAPI));
            results.put(ROUTETERMSAPI, getLabelName(ROUTETERMSAPI));
            results.put(ROUTETILEAPI, getLabelName(ROUTETILEAPI));
            results.put(RULEENGINECONTEXTAPI, getLabelName(RULEENGINECONTEXTAPI));
            results.put(RULEENGINERULEAPI, getLabelName(RULEENGINERULEAPI));
            results.put(SCREENAPI, getLabelName(SCREENAPI));
            results.put(SCREENSECTIONAPI, getLabelName(SCREENSECTIONAPI));
            results.put(VIEWAPI, getLabelName(VIEWAPI));
            results.put(SECTIONCONFIGURATIONAPI, getLabelName(SECTIONCONFIGURATIONAPI));
            results.put(SPREADSTATEMENTRECORDAPI, getLabelName(SPREADSTATEMENTRECORDAPI));
            results.put(SPREADSTATEMENTRECORDTOTAL, getLabelName(SPREADSTATEMENTRECORDTOTAL));
            results.put(SPREADSTATEMENTTYPEAPI, getLabelName(SPREADSTATEMENTTYPEAPI));
            results.put(TEAMAPI, getLabelName(TEAMAPI));
            results.put(TEAMKEYSAPI, getLabelName(TEAMKEYSAPI));
            results.put(TILEAPI, getLabelName(TILEAPI));
            results.put(TEMPLATERECORDSAPI, getLabelName(TEMPLATERECORDSAPI));
            results.put(UNDERWRITINGBUNDLEAPI, getLabelName(UNDERWRITINGBUNDLEAPI));
            results.put(WIDGETAPI, getLabelName(WIDGETAPI));

            return results;
        }
    }

    private static String getLabelName(String apiName) {
        DescribeSObjectResult[] describeSObjectResult = schema.describeSObjects(
            new String[] { apiName }
        );
        return describeSObjectResult[0].getLabelPlural() + SPACEDASHPARENTH + apiName + RPARENTH;
    }

    private static final String SPACEDASHPARENTH = ' - (',
                                RPARENTH = ')',
                                SELECTVALUE = 'SELECT Id, Name, ',
                                SELECTGROUPVALUE = 'SELECT ',
                                COUNTVALUE = ', COUNT(Id) ',
                                FROMVALUE = ' FROM ',
                                GROUPBYVALUE = ' GROUP BY ',
                                WHEREVALUE = ' WHERE ',
                                INVALUE = ' IN :dupKey AND ',
                                KEYCHECKVALUE = ' = \'\'',
                                NOTKEYCHECKVALUE = ' != \'\'',
                                LIMITVALUE = ' LIMIT 2000',
                                OBJNAME = 'objName',
                                RECORDIDS = 'recordIds',
                                EXPRESION = 'expr0',
                                NFORMSPREFIX = 'nFORMS',
                                LLCBIPREFIX = 'LLC_BI',
                                NFORCEPREFIX = 'nFORCE',
                                NFORMSLOOKUPKEY = 'nFORMS__lookupKey__c',
                                LLCBILOOKUPKEY = 'LLC_BI__lookupKey__c',
                                NFORCELOOKUPKEY = 'nFORCE__lookupKey__c',
                                ENDFIX = '__c',
                                BUDGETAPI = 'LLC_BI__Budget__c',
                                BUDGETLINEITEMAPI = 'LLC_BI__Budget_Line_Item__c',
                                BILLPOINTAPI = 'LLC_BI__Bill_Point__c',
                                CONFIGKEYAPI = 'LLC_BI__CFG_ConfigKey__c',
                                CONFIGVALUEAPI = 'LLC_BI__CFG_ConfigValue__c',
                                CLOSINGCHECKLISTAPI = 'LLC_BI__ClosingChecklist__c',
                                COLLATERALTYPEAPI = 'LLC_BI__Collateral_Type__C',
                                CONNECTIONROLEAPI = 'LLC_BI__Connection_Role__c',
                                COVENANTTYPEAPI = 'LLC_BI__Covenant_Type__c',
                                CREDITMEMOAPI = 'LLC_BI__Credit_Memo__c',
                                DOCCLASSAPI = 'LLC_BI__DocClass__c',
                                DOCMANAGERAPI = 'LLC_BI__DocManager__c',
                                DOCTABAPI = 'LLC_BI__DocTab__c',
                                DOCTYPEAPI = 'LLC_BI__DocType__c',
                                FIELMAPAPI = 'LLC_BI__Field_Map__c',
                                GROUPAPI = 'nFORCE__Group__c',
                                LAYOUTAPI = 'nFORCE__Layout__c',
                                OPTIONAPI = 'nFORCE__Option__c',
                                OPTIONRULEAPI = 'nFORCE__Option_Rule__c',
                                POLICYEXCEPTIONMITIGATIONREASONAPI = 'LLC_BI__Policy_Exception_Mitigation_Reason__c',
                                POLICYEXCEPTIONTEMPLATEAPI = 'LLC_BI__Policy_Exception_Template__c',
                                PRODUCTAPI = 'LLC_BI__Product__c',
                                PRODUCTFEATURE = 'LLC_BI__Product_Feature__c',
                                PRODUCTLINEAPI = 'LLC_BI__Product_Line__c',
                                PRODUCTSTATECONFIGAPI = 'LLC_BI__Product_State_Config__c',
                                PRODUCTTYPEAPI = 'LLC_BI__Product_Type__c',
                                RATEAPI = 'LLC_BI__Rate__c',
                                QUESTIONAPI = 'nFORCE__Question__c',
                                RISKGRADEFACTORAPI = 'LLC_BI__Risk_Grade_Factor__c',
                                RICKGRADEGROUPAPI = 'LLC_BI__Risk_Grade_Group__c',
                                RICKGRADETEMPLATEAPI = 'LLC_BI__Risk_Grade_Template__c',
                                RISKGRADECRITERIAAPI = 'LLC_BI__Risk_Grade_Criteria__c',
                                ROLEAPI = 'LLC_BI__Role__c',
                                ROUTEAPI = 'nFORCE__Route__c',
                                ROUTEGROUPAPI = 'nFORCE__Route_Group__c',
                                RULEENGINECONTEXTAPI = 'nFORCE__Rule_Engine_Context__c',
                                RULEENGINERULEAPI = 'nFORCE__Rule_Engine_Rule__c',
                                SCREENAPI = 'nFORCE__Screen__c',
                                SCREENSECTIONAPI = 'nFORCE__Screen_Section__c',
                                VIEWAPI = 'nFORCE__View__c',
                                SECTIONCONFIGURATIONAPI = 'nFORCE__Section_Configuration__c',
                                SPREADSTATEMENTRECORDAPI = 'LLC_BI__Spread_Statement_Record__c',
                                SPREADSTATEMENTRECORDTOTAL = 'LLC_BI__Spread_Statement_Record_Total__c',
                                SPREADSTATEMENTTYPEAPI = 'LLC_BI__Spread_Statement_Type__c',
                                TEAMAPI = 'LLC_BI__Team__c',
                                TEAMKEYSAPI = 'LLC_BI__Team_Keys__c',
                                TEMPLATERECORDSAPI = 'LLC_BI__Template_Records__c',
                                UNDERWRITINGBUNDLEAPI = 'LLC_BI__Underwriting_Bundle__c',
                                WIDGETAPI = 'nFORCE__Widget__c',
                                FORMSAPI = 'nFORMS__Form_Template__c',
                                TILEAPI = 'nFORCE__Tile__c',
                                ROUTETILEAPI = 'nFORCE__Route_Tile__c',
                                ROUTETERMSAPI = 'nFORCE__Route_Terms__c',
                                PRICINGMATRIXAPI = 'LLC_BI__Pricing_Matrix__c',
                                FIELDCONFIGAPI = 'nFORCE__Field_Configuration__c',
                                DOUBLEQUOTEBRACKET = '"]',
                                BRACKETDOUBLEQUOTE = '["',
                                QUOTECOMMAQUOTE = '","';
}