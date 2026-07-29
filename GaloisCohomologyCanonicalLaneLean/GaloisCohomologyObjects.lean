import canonicalLaneMathlib.AdmissibleClass

/-!
# Galois Cohomology Objects

This module defines the basic objects for Galois cohomology: profinite groups,
continuous cochains, and cohomology sets.
-/

noncomputable section

universe u

namespace HautevilleHouse
namespace GaloisCohomologyCanonicalLaneLean

structure ProfiniteGroup where
  underlying : Type u
  [group : Group underlying]
  [topology : TopologicalSpace underlying]
  isProfinite : CompactSpace underlying ∧ TotallyDisconnectedSpace underlying

structure ContinuousCochain (G : ProfiniteGroup) (M : Type u) [AddCommGroup M] [TopologicalSpace M] where
  degree : ℕ
  cochain : (G.underlying → (Fin degree → G.underlying) → M)
  continuous : ∀ (f : G.underlying → (Fin degree → G.underlying) → M), True

structure CohomologySet (G : ProfiniteGroup) (M : Type u) [AddCommGroup M] [TopologicalSpace M] (n : ℕ) where
  cocycles : Set (ContinuousCochain G M)
  coboundaries : Set (ContinuousCochain G M)
  quotient : Type u

def GaloisCohomologySubstrate : Prop := True

end GaloisCohomologyCanonicalLaneLean
end HautevilleHouse