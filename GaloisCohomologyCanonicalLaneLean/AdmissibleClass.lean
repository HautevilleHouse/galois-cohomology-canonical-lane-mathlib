import GaloisCohomologyCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace GaloisCohomologyCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedGaloisObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GaloisCohomologyCanonicalLaneLean
end HautevilleHouse