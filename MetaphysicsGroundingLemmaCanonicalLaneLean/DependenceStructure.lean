import MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingRelation

/-!
# Dependence Structure Package
-/

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure DependenceStructurePackage {F : FundamentalityBasisPackage}
    {G : GroundingRelationPackage F} where
  dependenceChain : Type u → Prop
  wellFounded : ∀ {x}, dependenceChain x → ∀ {y}, G.groundingRel y x → dependenceChain y
  noInfiniteDescent : ∀ {f : ℕ → Type u}, (∀ n, dependenceChain (f n) ∧ G.groundingRel (f (n+1)) (f n)) → False

structure DependenceStructureEvidence {F : FundamentalityBasisPackage}
    {G : GroundingRelationPackage F} (D : DependenceStructurePackage G) where
  wellFoundedClosed : D.wellFounded
  noInfiniteDescentClosed : D.noInfiniteDescent

def DependenceStructureClosed {F : FundamentalityBasisPackage}
    {G : GroundingRelationPackage F} (D : DependenceStructurePackage G) : Prop :=
  D.wellFounded ∧ D.noInfiniteDescent

theorem dependence_structure_closed_from_evidence
    {F : FundamentalityBasisPackage} {G : GroundingRelationPackage F}
    (D : DependenceStructurePackage G) (E : DependenceStructureEvidence D) :
    DependenceStructureClosed D := by
  exact And.intro E.wellFoundedClosed E.noInfiniteDescentClosed

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse