import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingRelation (A : Type) (B : Type) where
  depends : A → B → Prop
  wellFounded : Prop
  minimalElement : Prop

structure GroundingObject where
  entity : Type
  identity : Prop

structure GroundingAdmittedObject where
  object : GroundingObject
  grounded : Prop
  remainder : Prop
  gateWitness : grounded ∨ remainder

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse