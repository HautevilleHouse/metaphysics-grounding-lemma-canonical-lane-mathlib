import MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingBridgeLemmas

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

def gateClosed (A : GroundingAdmittedObject) : Prop :=
  A.grounded ∨ A.remainder

theorem gate_from_admissible_class (A : GroundingAdmittedObject) :
    gateClosed A := by
  exact A.gateWitness

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse