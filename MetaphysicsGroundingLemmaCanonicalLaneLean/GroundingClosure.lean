import MetaphysicsGroundingLemmaCanonicalLaneLean.DependenceStructure

/-!
# Grounding Closure Package
-/

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingClosurePackage {F : FundamentalityBasisPackage}
    {G : GroundingRelationPackage F} {D : DependenceStructurePackage G} where
  groundingClosed : ∀ (x : Type u), G.groundingRel x x → D.dependenceChain x
  closureCondition : ∀ (x : Type u), D.dependenceChain x → G.groundingRel x x

structure GroundingClosureEvidence {F : FundamentalityBasisPackage}
    {G : GroundingRelationPackage F} {D : DependenceStructurePackage G}
    (C : GroundingClosurePackage D) where
  groundingClosedClosed : C.groundingClosed
  closureConditionClosed : C.closureCondition

def GroundingClosureClosed {F : FundamentalityBasisPackage}
    {G : GroundingRelationPackage F} {D : DependenceStructurePackage G}
    (C : GroundingClosurePackage D) : Prop :=
  C.groundingClosed ∧ C.closureCondition

theorem grounding_closure_closed_from_evidence
    {F : FundamentalityBasisPackage} {G : GroundingRelationPackage F}
    {D : DependenceStructurePackage G} (C : GroundingClosurePackage D)
    (E : GroundingClosureEvidence C) : GroundingClosureClosed C := by
  exact And.intro E.groundingClosedClosed E.closureConditionClosed

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse