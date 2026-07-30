import MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingFoundation

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingChain (A : GroundingObject) where
  chain : Nat → GroundingObject
  base : A
  successor : ∀ n, GroundingRelation (chain n) (chain (n+1))
  wellFounded : WellFounded (fun x y : GroundingObject => ∃ n, x = chain n ∧ y = chain (n+1))

structure GroundingCertificate (A : GroundingObject) where
  chain : GroundingChain A
  finalGround : A.grounded

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse