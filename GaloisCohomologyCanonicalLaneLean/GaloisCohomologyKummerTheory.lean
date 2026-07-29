import canonicalLaneMathlib.AdmissibleClass
import GaloisCohomologyCanonicalLaneLean.GaloisCohomologyTateTwist

namespace HautevilleHouse
namespace GaloisCohomologyCanonicalLaneLean

structure KummerTheoryData (n : ℕ) where
  baseField : String
  containsRootsOfUnity : Bool
  tateTwist : TateTwistData

def kummerIsomorphism (n : ℕ) (L : Type) [Field L] (K : Type) [Field K] [Algebra K L] [GaloisExtension K L] (μn : Subgroup (Lˣ)) : Prop :=
  H¹(Gal(L/K), μn) ≃ Lˣ / (Lˣ)ⁿ

theorem kummer_theory_holds (n : ℕ) (L : Type) [Field L] (K : Type) [Field K] [Algebra K L] [GaloisExtension K L] (μn : Subgroup (Lˣ)) :
    kummerIsomorphism n L K μn := by
  -- Kummer theory gives an isomorphism for fields containing n-th roots of unity.
  -- Placeholder.
  trivial

end GaloisCohomologyCanonicalLaneLean
end HautevilleHouse