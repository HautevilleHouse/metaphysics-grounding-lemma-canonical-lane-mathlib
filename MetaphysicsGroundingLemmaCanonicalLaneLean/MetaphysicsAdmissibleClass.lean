import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingChain where
  chainLength : Nat
  dependenceRelation : Type u
  transitivityHolds : Prop
  irreflexivityHolds : Prop

structure GroundedObject where
  object : Type u
  grounds : List GroundedObject
  chain : GroundingChain
  ultimateGround : Prop
  conclusion : ultimateGround

structure AdmissibleClass where
  object : GroundedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GroundedWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse