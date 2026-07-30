import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure DependenceOrder where
  entity : Type u
  dependsOn : entity → entity → Prop
  reflexive : ∀ a, dependsOn a a
  antisymmetric : ∀ a b, dependsOn a b → dependsOn b a → a = b
  transitive : ∀ a b c, dependsOn a b → dependsOn b c → dependsOn a c

structure DependenceOrderEvidence (D : DependenceOrder) where
  reflexiveClosed : D.reflexive
  antisymmetricClosed : D.antisymmetric
  transitiveClosed : D.transitive

def DependenceOrderClosed (D : DependenceOrder) : Prop :=
  D.reflexive ∧ D.antisymmetric ∧ D.transitive

theorem dependence_order_closed_from_evidence (D : DependenceOrder) (E : DependenceOrderEvidence D) :
    DependenceOrderClosed D := by
  exact And.intro E.reflexiveClosed (And.intro E.antisymmetricClosed E.transitiveClosed)

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse