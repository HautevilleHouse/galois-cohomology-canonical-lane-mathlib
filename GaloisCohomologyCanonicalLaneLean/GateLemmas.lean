import GaloisCohomologyCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GaloisCohomologyCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A :=
  A.gateWitness

end GaloisCohomologyCanonicalLaneLean
end HautevilleHouse