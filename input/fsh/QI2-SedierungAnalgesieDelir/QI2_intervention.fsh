Instance: PeriodicAssessmentOfSedationAnalgesiaDelirium
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Periodic Assessment of Sedation Level, Analgesia Level and Delirium Status"
Description: "Sedation Level, Analgesia Level and Delirium Status should be assessed periodically every 8 hours."
* insert canonical-url(DIVI-DigiQIs, intervention/periodic-assessment_sedation_analgesia_delirium)
* status = #active
* name = "Intervention_PeriodicAssessment_Sedation_Analgesia_Delirium"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator2)

// Reference Population for the Intervention: Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients)

// Define Intervention 
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "assessment-sedation-goal"
  * goalId[+] = "assessment-analgesia-goal"
  * goalId[+] = "assessment-delirium-goal"

// Define Goal for Sedation Assessment
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-sedation-goal"
  * description.text = "Sedation should be assessed periodically every 8 hours."
  * target[+]
    * measure = $sct#851211000000105 "Assessment of Sedation Level"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 8 'hours' "hours"

// Define Goal for Analgesia Assessment
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-analgesia-goal"
  * description.text = "Analgesia should be assessed periodically every 8 hours."
  * target[+]
    * measure = $sct#370778008 "Assessment of Pain Control"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 8 'hours' "hours"

// Define Goal for Delirium Assessment
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "assessment-delirium-goal"
  * description.text = "Delirium should be assessed periodically every 8 hours."
  * target[+]
    * measure = $sct#733870009 "Assessment of Delirium"
    * detailRange.low = 1 'occurrence' "occurrence"
    * due = 8 'hours' "hours"


Instance: SedationLevelAnalgesiaLevelDeliriumStatusInAcceptableRanges
InstanceOf: recommendation-plan 
Usage: #definition
Title: "Sedation Level, Analgesia Level and Delirium Status in acceptable ranges."
Description: "Sedation Level, Analgesia Level and Delirium Status should be in acceptable ranges."
* insert canonical-url(DIVI-DigiQIs, intervention/Sedation-Level_Analgesia-Level_Delirium-Status_In-Acceptable-Ranges)
* status = #active
* name = "Intervention_SedationLevel_AnalgesiaLevel_DeliriumStatus_InAcceptableranges"
* date = "2024-03-29"
* version = "1.0"

// Reference Recommendation Collection
* extension[partOf].valueCanonical = Canonical(DIVIQualityIndicator2)

// Reference Population for the Intervention: Intensive Care Patients
* subjectCanonical = Canonical(IntensiveCarePatients)

// Define Intervention 
* action[assessment][+]
  * code = $sct#386053000 "Evaluation procedure (procedure)"
  * goalId[+] = "sedation-inrange-goal"
  * goalId[+] = "analgesia-inrange-goal"
  * goalId[+] = "delirium-inrange-goal"

// Define Goal for Sedation Assessment
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "sedation-inrange-goal"
  * description.text = "Sedation Level should be within RASS scores of -1 to +1"
  * target[+]
    * measure = $sct#4574410001244102 "Richmond agitation-sedation scale"
    * detailRange
      * low = -1 '' ""
      * high = 1 '' ""

// Define Goal for Analgesia Assessment
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "analgesia-inrange-goal"
  * description.text = "Analgesia Level should be within NRS scores of 0 to 3"
  * target[+]
    * measure = $sct#1284852002 "Numeric Pain Rating Scale"
    * detailRange
      * low = 0 '' ""
      * high = 3 '' ""

// Define Goal for Delirium Assessment
* goal[assessmentScale][+]
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * id = "delirium-inrange-goal"
  * description.text = "Delirium Status should be within CAM-ICU scores of 0 (No Delirium)"
  * target[+]
    * measure = $sct#824471000000102 "Short confusion assessment method"
    * detailRange
      * low = 0 '' ""
      * high = 0 '' ""