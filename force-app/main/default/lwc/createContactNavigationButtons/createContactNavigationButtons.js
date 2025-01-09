import { LightningElement,api, track } from 'lwc';
import {
    FlowNavigationBackEvent,
    FlowNavigationNextEvent,
    FlowAttributeChangeEvent
  } from "lightning/flowSupport";
 

export default class CreateContactNavigationButtons extends LightningElement {

@api availableActions = [];
   @api loadContactDetailSection ;
    
 
   get getButtonClass(){
    return "slds-float_left";
   }
   get buttonBookLabel(){
    return this.loadContactDetailSection=='true1' ? 'No Contact Details': 'Provide Contact Details';
   }
   
  /*handlePrevious() {
   
    if (this.availableActions.find((action) => action === "BACK")) {
      const navigateBackEvent = new FlowNavigationBackEvent();
      this.dispatchEvent(navigateBackEvent);
    }
  }*/
 
  handleNext() {
   
    console.log('reaching available block');
    if (this.availableActions.find((action) => action === "NEXT")) {
        const navigateNextEvent = new FlowNavigationNextEvent();
        this.dispatchEvent(navigateNextEvent);
    }
   
  }
  loadNextTimeSlots(){
   
    this.loadContactDetailSection = this.loadContactDetailSection != 'true1' || !this.loadContactDetailSection || this.loadContactDetailSection == undefined? 'true1':null;
    console.log('loadNextScreen:'+this.loadContactDetailSection);
    ["loadContactDetailSection"].forEach((loc) =>
        this.dispatchEvent(new FlowAttributeChangeEvent(loc, this[loc])));
  }
}