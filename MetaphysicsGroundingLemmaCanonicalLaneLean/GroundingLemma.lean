import MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingRelations

/-!
# Grounding Lemma Package
-/

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingLemmaPackage {G : GroundingRelation} {S : GroundingStructurePackage G} where
  groundingLemmaStatement : Prop
  lemmaProofConstructed : Prop
  explanatoryRelevance : Prop
  closureUnderGrounding : Prop

structure GroundingLemmaEvidence {G : GroundingRelation} {S : GroundingStructurePackage G} (L : GroundingLemmaPackage S) where
  groundingLemmaStatementClosed : L.groundingLemmaStatement
  lemmaProofConstructedClosed : L.lemmaProofConstructed
  explanatoryRelevanceClosed : L.explanatoryRelevance
  closureUnderGroundingClosed : L.closureUnderGrounding

def GroundingLemmaClosed {G : GroundingRelation} {S : GroundingStructurePackage G} (L : GroundingLemmaPackage S) : Prop :=
  L.groundingLemmaStatement ∧ L.lemmaProofConstructed ∧
  L.explanatoryRelevance ∧ L.closureUnderGrounding

theorem grounding_lemma_closed_from_evidence
    {G : GroundingRelation} {S : GroundingStructurePackage G} (L : GroundingLemmaPackage S) (E : GroundingLemmaEvidence L) :
    GroundingLemmaClosed L := by
  exact And.intro E.groundingLemmaStatementClosed
    (And.intro E.lemmaProofConstructedClosed
      (And.intro E.explanatoryRelevanceClosed E.closureUnderGroundingClosed))

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse