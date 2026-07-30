import MetaphysicsGroundingLemmaCanonicalLaneLean.MetaphysicsGroundingFinalTheorem

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure Formalism where
  language : Type
  axioms : List (FormulaExpr)
  rules : List (FormulaExpr → FormulaExpr)

inductive FormulaExpr where
  | var (name : String)
  | not (arg : FormulaExpr)
  | and (lhs rhs : FormulaExpr)
  | or (lhs rhs : FormulaExpr)
  | implies (lhs rhs : FormulaExpr)
  | forall (var : String) (body : FormulaExpr)
  | exists (var : String) (body : FormulaExpr)
  | ground (a b : FormulaExpr)

structure FormalizationState where
  objects : List GroundingObject
  relations : List (GroundingRelation GroundingObject GroundingObject)
  certificates : List (GroundingCertificate GroundingObject)

theorem formalization_closure (A : GroundingAdmittedObject) :
    ConstrainedGroundingClosure A := by
  exact constrained_grounding_endgame A

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse