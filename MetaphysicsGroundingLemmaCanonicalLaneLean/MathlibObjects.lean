import MetaphysicsGroundingLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure GroundingSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure GroundingAdmittedObject where
  space : GroundingSpace
  groundingClosed : Prop
  wellFounded : Prop
  fundamentalityModel : Type
  fundamentalityTopology : TopologicalSpace fundamentalityModel
  modelGroundsAll : Prop
  conclusion : modelGroundsAll

structure GroundingEndgameState where
  object : GroundingAdmittedObject

def GroundingWitnessClosed (O : GroundingAdmittedObject) : Prop :=
  O.modelGroundsAll

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse