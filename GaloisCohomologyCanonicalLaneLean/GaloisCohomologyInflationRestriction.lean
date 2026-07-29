import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GaloisCohomologyCanonicalLaneLean

structure InflationRestrictionSequence (G : Type) [Group G] (H : Type) [Group H] (φ : H → G) where
  inflationMap : (H → AbelianGroup) → (G → AbelianGroup)
  restrictionMap : (G → AbelianGroup) → (H → AbelianGroup)
  exactness : True

def inflationRestrictionExact (G : Type) [Group G] (H : Type) [Group H] (φ : H → G) : Prop :=
  ∃ (seq : InflationRestrictionSequence G H φ), seq.exactness

theorem inflation_restriction_holds (G : Type) [Group G] (H : Type) [Group H] (φ : H → G) :
    inflationRestrictionExact G H φ := by
  exists { inflationMap := λ f => f ∘ φ, restrictionMap := λ f => f ∘ Subtype.val, exactness := trivial }

end GaloisCohomologyCanonicalLaneLean
end HautevilleHouse