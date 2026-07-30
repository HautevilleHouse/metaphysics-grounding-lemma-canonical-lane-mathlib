import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingRelation (A : AdmissibleClass) where
  ground : A.object → Prop
  grounded : Prop
  bridgingCondition : ground = λ x => grounded

structure GroundingLemmaPackage (A : AdmissibleClass) where
  fundamentalGrounding : A.object → Prop
  transitiveGrounding : Prop
  wellfoundedness : Prop
  priorityStructure : Prop
  closureUnderGrounding : Prop

structure GroundingLemmaEvidence {A : AdmissibleClass} (G : GroundingLemmaPackage A) where
  fundamentalGroundingClosed : G.fundamentalGrounding A.object
  transitiveGroundingClosed : G.transitiveGrounding
  wellfoundednessClosed : G.wellfoundedness
  priorityStructureClosed : G.priorityStructure
  closureUnderGroundingClosed : G.closureUnderGrounding

def GroundingLemmaClosed {A : AdmissibleClass} (G : GroundingLemmaPackage A) : Prop :=
  G.fundamentalGrounding A.object ∧ G.transitiveGrounding ∧
  G.wellfoundedness ∧ G.priorityStructure ∧ G.closureUnderGrounding

theorem grounding_lemma_closed_from_evidence {A : AdmissibleClass}
    (G : GroundingLemmaPackage A) (E : GroundingLemmaEvidence G) :
    GroundingLemmaClosed G := by
  exact And.intro E.fundamentalGroundingClosed
    (And.intro E.transitiveGroundingClosed
      (And.intro E.wellfoundednessClosed
        (And.intro E.priorityStructureClosed E.closureUnderGroundingClosed)))

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse