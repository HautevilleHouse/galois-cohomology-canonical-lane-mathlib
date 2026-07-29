import GaloisCohomologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GaloisCohomologyCanonicalLaneLean

def ConstrainedGaloisCohomologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_galois_cohomology_closure (A : AdmissibleClass) :
    ConstrainedGaloisCohomologyClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GaloisCohomologyCanonicalLaneLean
end HautevilleHouse