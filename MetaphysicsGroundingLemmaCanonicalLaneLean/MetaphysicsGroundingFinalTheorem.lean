import MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingGateLemmas

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

def ConstrainedGroundingClosure (A : GroundingAdmittedObject) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_grounding_endgame (A : GroundingAdmittedObject) :
    ConstrainedGroundingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse