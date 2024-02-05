<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>CP_Collateral_Latitude_Set</fullName>
        <field>Collateral_Location__Latitude__s</field>
        <formula>LLC_BI__Collateral__r.Latitude_Formula__c</formula>
        <name>CP - Collateral Latitude - Set</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>CP_Collateral_Longitude_Set</fullName>
        <field>Collateral_Location__Longitude__s</field>
        <formula>LLC_BI__Collateral__r.Longitude_Formula__c</formula>
        <name>CP - Collateral Longitude - Set</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Populate_Original_Loan_Amount</fullName>
        <description>-DEPRECATED- Populates the Original Loan Amount field using the value from the loan record. This functionality is now included in managed triggers.</description>
        <field>LLC_BI__Original_Loan_Amount__c</field>
        <formula>LLC_BI__Loan__r.LLC_BI__Amount__c</formula>
        <name>Populate Original Loan Amount</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Recovery_Value_Update</fullName>
        <description>Updates Recovery Value on the Collateral Pledge with a value from the Collateral Mgmt.</description>
        <field>Recovery_Value__c</field>
        <formula>LLC_BI__Collateral__r.Recovery_Value__c</formula>
        <name>Recovery Value Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Subscription_Amount_Update</fullName>
        <description>Updates Subscription Amount on the Collateral Pledge with a value from the Collateral Mgmt.</description>
        <field>Subscription_Amount__c</field>
        <formula>LLC_BI__Collateral__r.Subscription_Amount__c</formula>
        <name>Subscription Amount Update</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>LLC_BI__Populate Loan Amount on Collateral Pledged</fullName>
        <actions>
            <name>LLC_BI__Populate_Original_Loan_Amount</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>-DEPRECATED- On new Collateral Pledged records, this workflow populates the Loan Amount field using the value from the loan record. This functionality is now included in managed triggers.</description>
        <formula>false</formula>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Set Collateral Location on Collateral Pledged</fullName>
        <actions>
            <name>CP_Collateral_Latitude_Set</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>CP_Collateral_Longitude_Set</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Latitude_Formula__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Longitude_Formula__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Subscription Amount and Recovery Value Update</fullName>
        <actions>
            <name>Recovery_Value_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Subscription_Amount_Update</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Subscription_Amount__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates fields on the Collateral Pledge: Recovery Value and Subscription Amount with values from the Collateral Mgmt DMR - 000321.</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>