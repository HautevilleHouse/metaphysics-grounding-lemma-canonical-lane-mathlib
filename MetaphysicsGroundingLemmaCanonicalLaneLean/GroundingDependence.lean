import HautevilleHouse.MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingChainStructure

/-!
# Grounding Dependence Package
-/

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingDependencePackage (C : GroundingChain) (S : GroundingChainStructure C) where
  baseObjects : List (GroundedObject)
  dependenceRelation : Type u
  wellFoundedness : Prop
  dependencyLinksClosed : Prop

structure GroundingDependenceEvidence (C : GroundingChain) (S : GroundingChainStructure C)
    (D : GroundingDependencePackage C S) where
  wellFoundednessClosed : D.wellFoundedness
  dependencyLinksClosedTerm : D.dependencyLinksClosed

def GroundingDependenceClosed (C : GroundingChain) (S : GroundingChainStructure C)
    (D : GroundingDependencePackage C S) : Prop :=
  D.wellFoundedness ∧ D.dependencyLinksClosed

theorem grounding_dependence_closed_from_evidence (C : GroundingChain)
    (S : GroundingChainStructure C) (D : GroundingDependencePackage C S)
    (E : GroundingDependenceEvidence C S D) : GroundingDependenceClosed C S D := by
  exact And.intro E.wellFoundednessClosed E.dependencyLinksClosedTerm

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse