import GaloisCohomologyCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace GaloisCohomologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  NativeBridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.sourceKeyChecked ∧ A.object.theoremObjectChecked

end GaloisCohomologyCanonicalLaneLean
end HautevilleHouse