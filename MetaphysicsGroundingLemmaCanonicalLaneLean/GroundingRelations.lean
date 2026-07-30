import MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingAdmissibleClass

/-!
# Grounding Relations Package
-/

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingRelation where
  type : Type
  order : type → type → Prop
  antisymm : ∀ a b, order a b ∧ order b a → a = b
  trans : ∀ a b c, order a b → order b c → order a c

structure GroundingRelationEvidence (R : GroundingRelation) where
  antisymmClosed : ∀ a b, R.order a b ∧ R.order b a → a = b
  transClosed : ∀ a b c, R.order a b → R.order b c → R.order a c

def GroundingRelationClosed (R : GroundingRelation) : Prop :=
  (∀ a b, R.order a b ∧ R.order b a → a = b) ∧ (∀ a b c, R.order a b → R.order b c → R.order a c)

theorem grounding_relation_closed_from_evidence (R : GroundingRelation) (E : GroundingRelationEvidence R) :
    GroundingRelationClosed R := by
  exact And.intro E.antisymmClosed E.transClosed

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse