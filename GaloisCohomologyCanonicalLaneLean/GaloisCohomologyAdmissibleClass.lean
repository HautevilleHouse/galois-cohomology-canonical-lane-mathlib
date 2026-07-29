import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaloisCohomologyCanonicalLaneLean

structure GaloisCohomologyAdmittedObject where
  sourceKey : String
  theoremObject : String
  claimBoundary : String
  hasContinuousCohomology : Bool
  hasInflationRestriction : Bool
  sourceKeyChecked : sourceKey = "GaloisCohomology"
  theoremObjectChecked : theoremObject = "Galois Cohomology"

structure AdmissibleClass where
  object : GaloisCohomologyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.sourceKey = "GaloisCohomology" ∧ A.object.theoremObject = "Galois Cohomology") ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GaloisCohomologyCanonicalLaneLean
end HautevilleHouse