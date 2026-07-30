import MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingFoundation

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

def bridgeClosed (A : GroundingAdmittedObject) : Prop :=
  A.grounded

theorem bridge_from_admissible_class (A : GroundingAdmittedObject) :
    bridgeClosed A := by
  cases A.gateWitness
  · exact h
  · exact h

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse