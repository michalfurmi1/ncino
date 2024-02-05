<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Expiry_Date_Update_on_Collateral_Mgmt</fullName>
        <description>Updates Expiry Date on the Collateral Mgmt with a value from the Collateral Valuation</description>
        <field>Expiry_Date__c</field>
        <formula>Expiry_Date__c</formula>
        <name>Expiry Date Update on Collateral Mgmt</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
        <targetObject>Collateral__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Collateral_Date</fullName>
        <field>LLC_BI__Appraisal_Date__c</field>
        <formula>Appraisal_Date__c</formula>
        <name>Update Collateral Date</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
        <targetObject>Collateral__c</targetObject>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Collateral_Value</fullName>
        <field>LLC_BI__Value__c</field>
        <formula>Collateral_Value__c</formula>
        <name>Update Collateral Value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
        <targetObject>Collateral__c</targetObject>
    </fieldUpdates>
    <rules>
        <fullName>Update Collateral Value</fullName>
        <actions>
            <name>Update_Collateral_Date</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Update_Collateral_Value</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Collateral_History2__c.Name</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>Collateral_History2__c.Collateral_Value__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Update Expiry Date on Collateral Mgmt</fullName>
        <actions>
            <name>Expiry_Date_Update_on_Collateral_Mgmt</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Collateral_History2__c.Expiry_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Updates Expiry Date on the Collateral Mgmt with a value from the Collateral Valuation DMR - 000321.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>