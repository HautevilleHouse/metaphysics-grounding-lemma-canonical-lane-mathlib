import MetaphysicsGroundingLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def groundingProjection : Projection GroundingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem grounding_projection_idempotent (x : GroundingEndgameState) :
    groundingProjection.toFun (groundingProjection.toFun x) = groundingProjection.toFun x := by
  exact groundingProjection.idempotent x

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse