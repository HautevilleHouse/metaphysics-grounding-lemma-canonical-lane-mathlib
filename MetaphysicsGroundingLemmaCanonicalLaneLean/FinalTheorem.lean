import MetaphysicsGroundingLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

def ConstrainedMetaphysicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_metaphysics_endgame (A : AdmissibleClass) :
    ConstrainedMetaphysicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse