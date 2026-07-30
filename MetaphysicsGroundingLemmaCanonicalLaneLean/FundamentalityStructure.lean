import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure FundamentalityStructure where
  entity : Type u
  isFundamental : entity → Prop
  fundamentalityProof : ∀ e, isFundamental e → ∀ (g : entity → Prop), (∀ x, g x → isFundamental x) → g e

structure FundamentalityStructureEvidence (F : FundamentalityStructure) where
  fundamentalityProofClosed : F.fundamentalityProof

def FundamentalityStructureClosed (F : FundamentalityStructure) : Prop :=
  F.fundamentalityProof

theorem fundamentality_structure_closed_from_evidence (F : FundamentalityStructure) (E : FundamentalityStructureEvidence F) :
    FundamentalityStructureClosed F := by
  exact E.fundamentalityProofClosed

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse