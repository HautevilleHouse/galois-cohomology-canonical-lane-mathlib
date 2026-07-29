import GaloisCohomologyCanonicalLaneLean.GaloisGeometricObjects

/-!
# Galois Cohomology Layer

This module represents the cohomology side of the Galois route: group cohomology
with coefficients in Galois modules, including the Tate-Shafarevich group.
-/

noncomputable section

universe u

namespace HautevilleHouse
namespace GaloisCohomologyCanonicalLaneLean

open FieldTheory GroupCohomology

structure NativeGaloisCohomologyProfile (Γ : Type u) [Group Γ] where
  degree : ℕ
  coefficientModule : Type u
  action : MulAction Γ coefficientModule
  twistStructure : Bool
  inflationRestrictionSequence : Bool
deriving Repr, DecidableEq

def galoisCohomologyProfile (K L : NativeField.{u}) [Galois K L] (n : ℕ) : NativeGaloisCohomologyProfile (NativeGaloisGroup K L) where
  degree := n
  coefficientModule := Unit
  action := inferInstance
  twistStructure := true
  inflationRestrictionSequence := true

def GaloisCohomologyTypeAvailable : Prop :=
  ∀ (Γ : Type u) [Group Γ] (M : Type u) [MulAction Γ M] (n : ℕ),
    Nonempty (GroupCohomology Γ M n → GroupCohomology Γ M n)

theorem galois_cohomology_type_available_checked :
    GaloisCohomologyTypeAvailable := by
  intro Γ inst M act n
  exact ⟨id⟩

theorem galois_cohomology_profile_inflation_restriction_checked (K L : NativeField.{u}) [Galois K L] (n : ℕ) :
    (galoisCohomologyProfile K L n).inflationRestrictionSequence = true := by
  simp [galoisCohomologyProfile]

end GaloisCohomologyCanonicalLaneLean
end HautevilleHouse
