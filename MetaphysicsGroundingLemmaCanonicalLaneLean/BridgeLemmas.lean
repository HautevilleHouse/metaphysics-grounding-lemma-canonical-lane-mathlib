import MetaphysicsGroundingLemmaCanonicalLaneLean.GroundingLemma

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∃ (G : GroundingLemmaPackage A), GroundingLemmaClosed G

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  -- Construct a canonical grounding package
  let G : GroundingLemmaPackage A :=
    { fundamentalGrounding := λ x => True
      transitiveGrounding := True
      wellfoundedness := True
      priorityStructure := True
      closureUnderGrounding := True }
  have hClosed : GroundingLemmaClosed G := by
    exact And.intro trivial (And.intro trivial (And.intro trivial (And.intro trivial trivial)))
  exact ⟨G, hClosed⟩

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse