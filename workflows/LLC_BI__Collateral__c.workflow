<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Assign_Record_Type_for_Ship</fullName>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Titled_Vessel</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Assign Record Type for Ship</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Borrowing_Base_Record_Type</fullName>
        <description>Updates the record type when Collateral Type = Borrowing Base</description>
        <field>RecordTypeId</field>
        <lookupValue>Borrowing_Base</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Borrowing Base Record Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>EMEA_Real_Estate</fullName>
        <description>Updates type Real Estate on Collateral Mgmt.</description>
        <field>RecordTypeId</field>
        <lookupValue>EMEA_Real_Estate</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>EMEA Real Estate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Field_update_to_Legal_contracts</fullName>
        <description>Used in a Collateral approval process - example.</description>
        <field>LLC_BI__Status__c</field>
        <literalValue>Legal Contracts</literalValue>
        <name>Field update to Legal contracts</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Field_update_to_Risk_Review</fullName>
        <field>LLC_BI__Status__c</field>
        <literalValue>Risk Review</literalValue>
        <name>Field update to Risk Review</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Gasoil</fullName>
        <description>Updates type to Gasoil/ Jet on Collateral Mgmt.</description>
        <field>RecordTypeId</field>
        <lookupValue>Gasoil</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Gasoil/ Jet</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Government_Contracts2</fullName>
        <description>Specifies the Government Contracts page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Government_Contracts</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Government Contracts2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Possessory_Letter_of_Credit2</fullName>
        <description>Specifies the Possessory Letter of Credit page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Possessory_Letter_of_Credit</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Possessory Letter of Credit2</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Possessory_Life_Insurance</fullName>
        <description>Specifies the Possessory Life Insurance page layout</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Possessory_Life_Insurance</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Possessory Life Insurance</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Possessory_Other</fullName>
        <description>Specifies the Possessory Other page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Possessory_Other</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Possessory Other</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Possessory_Savings_CD</fullName>
        <description>Specifies the Possessory Savings/CD page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Possessory_Savings_CD</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Possessory Savings/CD</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Possessory_Securities</fullName>
        <description>Specifies the Possessory Securities page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Possessory_Securities</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Possessory Securities</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Real_Estate</fullName>
        <description>Specifies the Real Estate page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Real_Estate</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Real Estate</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Titled_Aircraft</fullName>
        <description>Specifies the Titled Aircraft page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Titled_Aircraft</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Titled Aircraft</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Titled_Boat</fullName>
        <description>Specifies the Titled Boat page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Titled_Boat</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Titled Boat</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Titled_Mobile_Home</fullName>
        <description>Specifies the Titled Mobile Home page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Titled_Mobile_Home</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Titled Mobile Home</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Titled_Motor_Vehicle</fullName>
        <description>Specifies the Motor Vehicle page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Titled_Motor_Vehicle</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Titled Motor Vehicle</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Titled_Trailer_Other</fullName>
        <description>Specifies the Titled Trailer/Other page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Titled_Trailer_Other</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Titled Trailer/Other</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__Titled_Vessel</fullName>
        <description>Specifies the Titled Vessel page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Titled_Vessel</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Titled Vessel</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>LLC_BI__UCC</fullName>
        <description>Specifies the UCC page layout.</description>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__UCC</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>UCC</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Market_Value</fullName>
        <description>Update Market Value on Collateral</description>
        <field>LLC_BI__Value__c</field>
        <formula>Quantity__c *  Price__c</formula>
        <name>Market Value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Prior_Market_Value</fullName>
        <field>Prior_Market_Value__c</field>
        <formula>PRIORVALUE( LLC_BI__Value__c)</formula>
        <name>Prior Market Value</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>UCC_for_Assets</fullName>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__UCC</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>UCC for Assets</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Update_Record_Type_to_Savings</fullName>
        <field>RecordTypeId</field>
        <lookupValue>LLC_BI__Possessory_Savings_CD</lookupValue>
        <lookupValueType>RecordType</lookupValueType>
        <name>Update Record Type to Savings</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>LookupValue</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Watchlist_Field</fullName>
        <description>The collateral is on the watchlist if the market value has gone down by at least 30%.</description>
        <field>Watchlist__c</field>
        <literalValue>1</literalValue>
        <name>Watchlist Field</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>Borrowing Base</fullName>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Type__c</field>
            <operation>equals</operation>
            <value>Borrowing Base</value>
        </criteriaItems>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Borrowing Base Page</fullName>
        <actions>
            <name>Borrowing_Base_Record_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Type__c</field>
            <operation>equals</operation>
            <value>Borrowing Base</value>
        </criteriaItems>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Business Assets Collateral UCC Page</fullName>
        <actions>
            <name>UCC_for_Assets</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Business Assets&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Expired Collateral Task</fullName>
        <actions>
            <name>Collateral_Expiry_Date_Notification</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Expiry_Date__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Expiry_Date__c</field>
            <operation>lessThan</operation>
            <value>TODAY</value>
        </criteriaItems>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Type__c</field>
            <operation>equals</operation>
            <value>Real Estate</value>
        </criteriaItems>
        <description>Creates a task to inform that the collateral has expired DMR - 000321.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Gasoil%2F Jet Collateral</fullName>
        <actions>
            <name>Gasoil</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <booleanFilter>1 AND (2 OR 3)</booleanFilter>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Type__c</field>
            <operation>equals</operation>
            <value>Commodities</value>
        </criteriaItems>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Subtype__c</field>
            <operation>equals</operation>
            <value>Gasoil</value>
        </criteriaItems>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Subtype__c</field>
            <operation>equals</operation>
            <value>Jet</value>
        </criteriaItems>
        <description>Specifies page layout for Collateral based on Collateral Type. Created for the ABN Amro use case, DMR - 000321.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Government Contracts2</fullName>
        <actions>
            <name>LLC_BI__Government_Contracts2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Other&quot;  &amp;&amp;  TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Government Contracts&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Possessory Letter of Credit2</fullName>
        <actions>
            <name>LLC_BI__Possessory_Letter_of_Credit2</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Possessory&quot;  &amp;&amp;  TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Letter of Credit&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Possessory Life Insurance2</fullName>
        <actions>
            <name>LLC_BI__Possessory_Life_Insurance</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Possessory&quot;  &amp;&amp;  TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Life Insurance&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Possessory Other2</fullName>
        <actions>
            <name>LLC_BI__Possessory_Other</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Possessory&quot;  &amp;&amp;  (TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Other Possessory&quot; || TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Note/Instrument&quot; || TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Receipts/Bills&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Possessory Savings%2FCD2</fullName>
        <actions>
            <name>LLC_BI__Possessory_Savings_CD</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Possessory&quot;  &amp;&amp;  TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Savings/CD&apos;s&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Possessory Securities2</fullName>
        <actions>
            <name>LLC_BI__Possessory_Securities</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Possessory&quot;  &amp;&amp;  TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Securities&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Real Estate2</fullName>
        <actions>
            <name>LLC_BI__Real_Estate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Real Estate&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Titled Aircraft2</fullName>
        <actions>
            <name>LLC_BI__Titled_Aircraft</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Titled&quot;  &amp;&amp;  TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Aircraft&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Titled Mobile Home2</fullName>
        <actions>
            <name>LLC_BI__Titled_Mobile_Home</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Titled&quot;  &amp;&amp;  TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Mobile Home&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Titled Motor Vehicle2</fullName>
        <actions>
            <name>LLC_BI__Titled_Motor_Vehicle</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Titled&quot;  &amp;&amp;  TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Motor Vehicle&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Titled Pleasure Boat2</fullName>
        <actions>
            <name>LLC_BI__Titled_Boat</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Titled&quot;  &amp;&amp;  TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Pleasure Boat&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Titled Trailer%2FOther2</fullName>
        <actions>
            <name>LLC_BI__Titled_Trailer_Other</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Titled&quot;  &amp;&amp;  (TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Trailer&quot; || TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Other&quot;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__Titled Vessel2</fullName>
        <actions>
            <name>LLC_BI__Titled_Vessel</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;Titled&quot;  &amp;&amp;  TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c) = &quot;Vessel&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>LLC_BI__UCC2</fullName>
        <actions>
            <name>LLC_BI__UCC</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>TEXT(LLC_BI__Collateral_Type__r.LLC_BI__Type__c) = &quot;UCC&quot;</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Market Value Decrease Notification</fullName>
        <actions>
            <name>Watchlist_Field</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Market_Value_dropped_by_at_least_30</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Creates tasks when the collateral value has gone down by at least 30% and check watchlist box DMR - 000321.</description>
        <formula>AND (( LLC_BI__Collateral_Type__c = &apos;Real Estate&apos;), LLC_BI__Value__c &lt; Prior_Market_Value__c - ( Prior_Market_Value__c * 0.3))</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Market Value below Subscription  Amount</fullName>
        <actions>
            <name>Market_value_below_subscription_amount</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <description>Creates tasks to inform that the market value has gone down and it&apos;s below the subscription amount DMR - 000321.</description>
        <formula>AND ( ISCHANGED(LLC_BI__Value__c ), LLC_BI__Value__c &lt;  Subscription_Amount__c )</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>New Collateral Created - Notification</fullName>
        <actions>
            <name>New_Collateral_Created</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Subtype__c</field>
            <operation>notEqual</operation>
            <value>Motor Vehicle</value>
        </criteriaItems>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Type__c</field>
            <operation>equals</operation>
            <value>Real Estate</value>
        </criteriaItems>
        <description>Creates task once new collateral record is created to initiate valuation DMR - 000321.</description>
        <triggerType>onCreateOnly</triggerType>
    </rules>
    <rules>
        <fullName>Possessory Savings%2FCD2</fullName>
        <actions>
            <name>Update_Record_Type_to_Savings</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Specifies page layout for Collateral2 based on Collateral Type</description>
        <formula>ISPICKVAL(LLC_BI__Collateral_Type__r.LLC_BI__Subtype__c, &apos;Savings/CDs&apos;)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Prior Market Value</fullName>
        <actions>
            <name>Prior_Market_Value</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <description>Updates hidden Prior Market Value field when the market value changes. DMR - 000321.</description>
        <formula>true</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Ship - Collateral Record Type</fullName>
        <actions>
            <name>Assign_Record_Type_for_Ship</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Type__c</field>
            <operation>equals</operation>
            <value>Titled</value>
        </criteriaItems>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Subtype__c</field>
            <operation>equals</operation>
            <value>Ship</value>
        </criteriaItems>
        <description>Specifies page layout for Ship Collateral based on Collateral Type</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Update Market Value Field</fullName>
        <actions>
            <name>Market_Value</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Quantity__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Price__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Type__c</field>
            <operation>equals</operation>
            <value>Commodities</value>
        </criteriaItems>
        <description>Updates market value if quantity and price is provided, used on commodities.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <rules>
        <fullName>Updates type to EMEA Real Estate on Collateral Mgmt%2E</fullName>
        <actions>
            <name>EMEA_Real_Estate</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Type__c</field>
            <operation>equals</operation>
            <value>Real Estate</value>
        </criteriaItems>
        <criteriaItems>
            <field>LLC_BI__Collateral__c.Country__c</field>
            <operation>equals</operation>
            <value>Netherlands</value>
        </criteriaItems>
        <description>If country is chosen as Netherlands, the record type gets updated to EMEA Real Estate to expose additional field requirements for this country. Created for the ABN Amro use case and used for Real Estate DMR - 000321.</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>Approval_required_for_Collateral</fullName>
        <assignedTo>erik.sinnard@ncino.aremo2</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Please review the collateral record.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Approval required for Collateral</subject>
    </tasks>
    <tasks>
        <fullName>Collateral_Expiry_Date_Notification</fullName>
        <assignedTo>erik.sinnard@ncino.aremo2</assignedTo>
        <assignedToType>user</assignedToType>
        <description>This collateral has expired.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Collateral Expiry Date Notification</subject>
    </tasks>
    <tasks>
        <fullName>Market_Value_dropped_by_at_least_30</fullName>
        <assignedTo>erik.sinnard@ncino.aremo2</assignedTo>
        <assignedToType>user</assignedToType>
        <description>This collateral value has gone down by at least 30%. Please review to ensure the loan to value is still appropriate and take the collateral off the watchlist.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Market Value dropped by at least 30%</subject>
    </tasks>
    <tasks>
        <fullName>Market_value_below_subscription_amount</fullName>
        <assignedTo>erik.sinnard@ncino.aremo2</assignedTo>
        <assignedToType>user</assignedToType>
        <description>This market value has fallen down below the subscription amount.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Market value below subscription amount</subject>
    </tasks>
    <tasks>
        <fullName>New_Collateral_Created</fullName>
        <assignedTo>erik.sinnard@ncino.aremo2</assignedTo>
        <assignedToType>user</assignedToType>
        <description>New collateral has been created, please provide external evaluation.</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>New Collateral Created</subject>
    </tasks>
    <tasks>
        <fullName>Prepare_Legal_Contracts</fullName>
        <assignedTo>erik.sinnard@ncino.aremo2</assignedTo>
        <assignedToType>user</assignedToType>
        <description>Preparing the following contracts:

1. Perfected Enforceability Opinion
2. Confirmation of the bank’s first-priority claim on underlying assets.
3. Confirmation of the bank’s right to liquidate or retain the collateral in a timely manner</description>
        <dueDateOffset>0</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>Prepare Legal Contracts</subject>
    </tasks>
</Workflow>