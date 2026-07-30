import MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingClosure

/-!
# Grounding Evidence Package
-/

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure GroundingEvidencePackage {F : FundamentalityBasisPackage}
    {G : GroundingRelationPackage F} {D : DependenceStructurePackage G}
    {C : GroundingClosurePackage D} where
  lemmaStatement : Prop
  proofTerms : lemmaStatement

structure GroundingEvidenceEvidence {F : FundamentalityBasisPackage}
    {G : GroundingRelationPackage F} {D : DependenceStructurePackage G}
    {C : GroundingClosurePackage D} (E : GroundingEvidencePackage C) where
  lemmaStatementClosed : E.lemmaStatement
  proofTermsClosed : E.proofTerms

def GroundingEvidenceClosed {F : FundamentalityBasisPackage}
    {G : GroundingRelationPackage F} {D : DependenceStructurePackage G}
    {C : GroundingClosurePackage D} (E : GroundingEvidencePackage C) : Prop :=
  E.lemmaStatement ∧ E.proofTerms

theorem grounding_evidence_closed_from_evidence
    {F : FundamentalityBasisPackage} {G : GroundingRelationPackage F}
    {D : DependenceStructurePackage G} {C : GroundingClosurePackage D}
    (E : GroundingEvidencePackage C) (Ev : GroundingEvidenceEvidence E) :
    GroundingEvidenceClosed E := by
  exact And.intro Ev.lemmaStatementClosed Ev.proofTermsClosed

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse