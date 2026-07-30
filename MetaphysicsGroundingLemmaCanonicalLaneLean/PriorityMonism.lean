import HautevilleHouse.MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingDependence

/-!
# Priority Monism Package
-/

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure PriorityMonismPackage (C : GroundingChain) (S : GroundingChainStructure C)
    (D : GroundingDependencePackage C S) where
  maximalGround : GroundedObject
  uniqueUltimateGround : Prop
  fundamentalityHolder : Prop
  priorityRelation : Type u
  priorityAsymmetry : Prop

structure PriorityMonismEvidence (C : GroundingChain) (S : GroundingChainStructure C)
    (D : GroundingDependencePackage C S) (P : PriorityMonismPackage C S D) where
  uniqueUltimateGroundClosed : P.uniqueUltimateGround
  fundamentalityHolderClosed : P.fundamentalityHolder
  priorityAsymmetryClosed : P.priorityAsymmetry

def PriorityMonismClosed (C : GroundingChain) (S : GroundingChainStructure C)
    (D : GroundingDependencePackage C S) (P : PriorityMonismPackage C S D) : Prop :=
  P.uniqueUltimateGround ∧ P.fundamentalityHolder ∧ P.priorityAsymmetry

theorem priority_monism_closed_from_evidence (C : GroundingChain)
    (S : GroundingChainStructure C) (D : GroundingDependencePackage C S)
    (P : PriorityMonismPackage C S D) (E : PriorityMonismEvidence C S D P) :
    PriorityMonismClosed C S D P := by
  exact And.intro E.uniqueUltimateGroundClosed
    (And.intro E.fundamentalityHolderClosed E.priorityAsymmetryClosed)

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse