Instance: DailyMultiprofessionalWardRounds
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Daily multiprofessional ward rounds"
Description: "Every Intensive Care Patient should be visited daily in multiprofessional ward rounds."
* insert canonical-url(DIVI-DigiQIs, intervention/daily-ward-rounds)
* status = #active
* name = "Intervention_DailyWardRounds"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator1)

// Reference Population for the Intervention: Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients)

// Define Intervention 
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "multiprofessional-wardrounds-goal"

// Define Goal for Multiprofessional Ward Rounds
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "multiprofessional-wardrounds-goal"
  * description.text = "Ward Rounds should be performed at least once every day."
  * target[+]
    * measure = $sct#1236923003 "Participation in multidisciplinary ward round"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 1 'd' "d"


Instance: DailyDocumentationTreatmentGoals
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Daily Documentation of Treatment Goals"
Description: "Treatment Goals should be documented daily for every Intensive Care Patient."
* insert canonical-url(DIVI-DigiQIs, intervention/daily-treatment-goals)
* status = #active
* name = "Intervention_DailyTreatmentGoals"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator1)

// Reference Population for the Intervention: Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients)

// Define Intervention 
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "documentation-treatment-goals-goal"

// Define Goal for Documentation of Treatment Goals
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "documentation-treatment-goals-goal"
  * description.text = "Treatment Goals should be documented at least once every day."
  * target[+]
    * measure = $sct#8384110000000104 "Setting health objective"
    * detailRange.low = 1 'assessment performed' "occurrence"
    * due = 1 'day' "day"

