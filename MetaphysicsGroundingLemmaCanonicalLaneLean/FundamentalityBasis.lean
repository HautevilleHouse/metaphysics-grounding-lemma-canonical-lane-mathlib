import MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingRelation

/-!
# Fundamentality Basis Package
-/

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure FundamentalityBasisPackage where
  fundamentalObjects : Type u → Prop
  completeness : ∀ (x : Type u), ∃ (f : Type u), fundamentalObjects f ∧ groundingRel f x
  incomparability : ∀ {x y : Type u}, fundamentalObjects x → fundamentalObjects y → x = y
  where
    groundingRel : Type u → Type u → Prop := λ _ _ => True

structure FundamentalityBasisEvidence (F : FundamentalityBasisPackage) where
  completenessClosed : F.completeness
  incomparabilityClosed : F.incomparability

def FundamentalityBasisClosed (F : FundamentalityBasisPackage) : Prop :=
  F.completeness ∧ F.incomparability

theorem fundamentality_basis_closed_from_evidence (F : FundamentalityBasisPackage)
    (E : FundamentalityBasisEvidence F) : FundamentalityBasisClosed F := by
  exact And.intro E.completenessClosed E.incomparabilityClosed

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse