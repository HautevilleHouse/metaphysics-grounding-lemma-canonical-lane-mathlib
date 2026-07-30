import MetaphysicsGroundingLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : GroundingAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GroundingWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse