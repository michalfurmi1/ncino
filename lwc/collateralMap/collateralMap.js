import { LightningElement, api, wire } from "lwc";
import { getRecord } from "lightning/uiRecordApi";

const FIELDS = ["LLC_BI__Collateral__c.LLC_BI__Zip_Code__c",
                "LLC_BI__Collateral__c.Country__c",
                "LLC_BI__Collateral__c.Name",
                "LLC_BI__Collateral__c.LLC_BI__Description__c",
                "LLC_BI__Collateral__c.LLC_BI__Street_Address__c",
                "LLC_BI__Collateral__c.LLC_BI__City__c"
                ];

export default class CollateralMap extends LightningElement {
  @api recordId;
  @api zoomLevel;
  icon = 'custom:custom6';
  description;
  collateral;
  street;
  city;
  postalCode;
  country;
  collateralName;
  mapMarkers = [];
  message;
  
  @wire(getRecord, { recordId: "$recordId", fields: FIELDS })
  wiredRecord({ error, data }) {
    if (data) {
      this.collateral = data;
      this.street = this.collateral.fields.LLC_BI__Street_Address__c.value;
      this.city = this.collateral.fields.LLC_BI__City__c.value;
      this.postalCode = this.collateral.fields.LLC_BI__Zip_Code__c.value;
      this.description = this.collateral.fields.LLC_BI__Description__c.value;
      this.country = this.collateral.fields.Country__c.value;
      this.collateralName = this.collateral.fields.Name.value;
      this.mapMarkers = [{
        location: {
          Street: this.street,
          City: this.city,
          Country: this.country,
          PostalCode: this.postalCode,
        },
        title: this.collateralName,
        description: this.description,
        icon: this.icon,
      }];
    } else if (error) {
      let message = "Unknown error";
      if (Array.isArray(error.body)) {
        message = error.body.map((e) => e.message).join(", ");
      } else if (typeof error.body.message === "string") {
        message = error.body.message;
      }
      const evt = new ShowToastEvent({
        title: "Error loading collateral",
        message: message,
        variant: "error",
      });
      this.dispatchEvent(evt);
    }
  }
}