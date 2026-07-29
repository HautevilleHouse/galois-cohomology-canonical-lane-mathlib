import canonicalLaneMathlib.AdmissibleClass

/-!
# Galois Cohomology Gate

This module defines the gate closure condition for Galois cohomology.
-/

noncomputable section

namespace HautevilleHouse
namespace GaloisCohomologyCanonicalLaneLean

def GaloisCohomologyGateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem galois_cohomology_gate_from_admissible_class (A : AdmissibleClass) :
    GaloisCohomologyGateClosed A := by
  exact A.gateWitness

end GaloisCohomologyCanonicalLaneLean
end HautevilleHouse