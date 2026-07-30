import HautevilleHouse.MetaphysicsGroundingLemmaCanonicalLaneLean.PriorityMonism

/-!
# Grounding Lemma Proof Package
-/

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingLemmaPackage (C : GroundingChain) (S : GroundingChainStructure C)
    (D : GroundingDependencePackage C S) (P : PriorityMonismPackage C S D) where
  lemmaStatement : Prop
  proofConstructed : Prop
  justificationTransfer : Prop
  lemmaStatementClosed : lemmaStatement
  proofConstructedClosed : proofConstructed
  justificationTransferClosed : justificationTransfer

structure GroundingLemmaEvidence (C : GroundingChain) (S : GroundingChainStructure C)
    (D : GroundingDependencePackage C S) (P : PriorityMonismPackage C S D)
    (G : GroundingLemmaPackage C S D P) where
  lemmaStatementClosedTerm : G.lemmaStatementClosed
  proofConstructedClosedTerm : G.proofConstructedClosed
  justificationTransferClosedTerm : G.justificationTransferClosed

def GroundingLemmaClosed (C : GroundingChain) (S : GroundingChainStructure C)
    (D : GroundingDependencePackage C S) (P : PriorityMonismPackage C S D)
    (G : GroundingLemmaPackage C S D P) : Prop :=
  G.lemmaStatement ∧ G.proofConstructed ∧ G.justificationTransfer

theorem grounding_lemma_closed_from_evidence (C : GroundingChain)
    (S : GroundingChainStructure C) (D : GroundingDependencePackage C S)
    (P : PriorityMonismPackage C S D) (G : GroundingLemmaPackage C S D P)
    (E : GroundingLemmaEvidence C S D P G) : GroundingLemmaClosed C S D P G := by
  exact And.intro E.lemmaStatementClosedTerm
    (And.intro E.proofConstructedClosedTerm E.justificationTransferClosedTerm)

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse