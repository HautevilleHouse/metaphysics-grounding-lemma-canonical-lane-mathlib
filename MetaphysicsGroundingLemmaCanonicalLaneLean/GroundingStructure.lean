import MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingRelations

/-!
# Grounding Structure Package
-/

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingStructurePackage {G : GroundingRelation} where
  strictFullGrounding : Prop
  immediateGroundingClosure : Prop
  mediateGroundingChain : Prop
  transitivityCondition : Prop
  wellFoundedCondition : Prop

structure GroundingStructureEvidence {G : GroundingRelation} (S : GroundingStructurePackage G) where
  strictFullGroundingClosed : S.strictFullGrounding
  immediateGroundingClosureClosed : S.immediateGroundingClosure
  mediateGroundingChainClosed : S.mediateGroundingChain
  transitivityConditionClosed : S.transitivityCondition
  wellFoundedConditionClosed : S.wellFoundedCondition

def GroundingStructureClosed {G : GroundingRelation} (S : GroundingStructurePackage G) : Prop :=
  S.strictFullGrounding ∧ S.immediateGroundingClosure ∧
  S.mediateGroundingChain ∧ S.transitivityCondition ∧ S.wellFoundedCondition

theorem grounding_structure_closed_from_evidence
    {G : GroundingRelation} (S : GroundingStructurePackage G) (E : GroundingStructureEvidence S) :
    GroundingStructureClosed S := by
  exact And.intro E.strictFullGroundingClosed
    (And.intro E.immediateGroundingClosureClosed
      (And.intro E.mediateGroundingChainClosed
        (And.intro E.transitivityConditionClosed E.wellFoundedConditionClosed)))

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse