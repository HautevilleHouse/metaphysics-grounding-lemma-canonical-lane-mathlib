import MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingBridgeLemmas

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure MetaGroundingEvidence (A : GroundingAdmittedObject) where
  selfGround : A.grounded
  metaGround : GroundingRelation A.object A.object
  closureProof : ConstrainedGroundingClosure A

theorem meta_grounding_closed (A : GroundingAdmittedObject)
    (E : MetaGroundingEvidence A) : ConstrainedGroundingClosure A :=
  E.closureProof

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse