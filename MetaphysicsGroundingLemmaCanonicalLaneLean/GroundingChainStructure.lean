import HautevilleHouse.MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingChain

/-!
# Grounding Chain Structure Package
-/

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingChainStructure (C : GroundingChain) where
  transitivityClosed : C.transitivityHolds
  irreflexivityClosed : C.irreflexivityHolds
  chainLengthClosed : C.chainLength > 0

structure GroundingChainEvidence (C : GroundingChain) (S : GroundingChainStructure C) where
  transitivityClosedTerm : S.transitivityClosed
  irreflexivityClosedTerm : S.irreflexivityClosed
  chainLengthClosedTerm : S.chainLengthClosed

def GroundingChainClosed (C : GroundingChain) : Prop :=
  C.transitivityHolds ∧ C.irreflexivityHolds ∧ C.chainLength > 0

theorem grounding_chain_closed_from_evidence (C : GroundingChain)
    (S : GroundingChainStructure C) (E : GroundingChainEvidence C S) :
    GroundingChainClosed C := by
  exact And.intro E.transitivityClosedTerm
    (And.intro E.irreflexivityClosedTerm E.chainLengthClosedTerm)

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse