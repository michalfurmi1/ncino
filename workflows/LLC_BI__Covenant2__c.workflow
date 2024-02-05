<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <rules>
        <fullName>Covenant Mgmt Rule Trigger</fullName>
        <actions>
            <name>Covenant_Coming_Due</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>To trigger a covenant when the Next Evaluation Date field is greater than Today</description>
        <formula>LLC_BI__Next_Evaluation_Date__c - TODAY() &lt;= VALUE (TEXT(LLC_BI__Compliance_Days_Prior__c))</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Next Evaluation Date</fullName>
        <actions>
            <name>Next_Evaluation_date_has_been_set</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>A task to notify user that next evaluation date has been set.</description>
        <formula>ISCHANGED (LLC_BI__Next_Evaluation_Date__c)</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <tasks>
        <fullName>Covenant_Coming_Due</fullName>
        <assignedTo>phill.drum.gc78fhvhs9hz@ncino.aremo2</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Please ensure covenant is tested and marked as compliant or non-compliant within 30 days.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Covenant Coming Due</subject>
    </tasks>
    <tasks>
        <fullName>Next_Evaluation_date_has_been_set</fullName>
        <assignedTo>erik.sinnard@ncino.aremo2</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Next evaluation date has been set</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Next Evaluation date has been set</subject>
    </tasks>
</Workflow>