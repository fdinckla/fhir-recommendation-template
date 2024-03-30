Instance: IntensiveCarePatients-InvasiveDevice
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: Intensive Care Patients with at least one invasive device"
Description: "Intensive Care Patients with at least one invasive device"
* insert canonical-url(DIVI-DigiQIs, population/intensive-care-patients_invasive-device)
* status = #active
* name = "Population_IntensiveCarePatients_InvasiveDevice"

// Include Intensive Care Patients
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#133903000 "Care of Intensive Care Unit Patient"
* characteristic[procedure][=].exclude = false

// Include only Patients that have at least one invasive device 
* characteristic[procedure][+]
  * definitionByTypeAndValue
    * valueCodeableConcept = $sct#19923001 "Catheter"
* characteristic[procedure][=].exclude = false

