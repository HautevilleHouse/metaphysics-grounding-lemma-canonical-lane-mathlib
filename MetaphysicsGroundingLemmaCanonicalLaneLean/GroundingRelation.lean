import MetaphysicsGroundingLemmaCanonicalLaneLean.MathlibObjects

/-!
# Grounding Relation Package
-/

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingRelationPackage (F : FundamentalityBasisPackage) where
  groundingRel : Type u → Type v → Prop
  reflexivity : ∀ {x}, groundingRel x x
  transitivity : ∀ {x y z}, groundingRel x y → groundingRel y z → groundingRel x z
  asymmetry : ∀ {x y}, groundingRel x y → ¬ groundingRel y x

structure GroundingRelationEvidence {F : FundamentalityBasisPackage}
    (G : GroundingRelationPackage F) where
  reflexivityClosed : G.reflexivity
  transitivityClosed : G.transitivity
  asymmetryClosed : G.asymmetry

def GroundingRelationClosed {F : FundamentalityBasisPackage}
    (G : GroundingRelationPackage F) : Prop :=
  G.reflexivity ∧ G.transitivity ∧ G.asymmetry

theorem grounding_relation_closed_from_evidence
    {F : FundamentalityBasisPackage} (G : GroundingRelationPackage F)
    (E : GroundingRelationEvidence G) : GroundingRelationClosed G := by
  exact And.intro E.reflexivityClosed
    (And.intro E.transitivityClosed E.asymmetryClosed)

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse