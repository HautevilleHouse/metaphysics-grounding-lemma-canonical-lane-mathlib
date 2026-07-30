import HautevilleHouse.MetaphysicsGroundingLemmaCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace MetaphysicsGroundingLemmaCanonicalLaneLean

structure AdmittedObject where
  groundingWitness : Prop
  conclusion : groundingWitness

def GroundingWitnessClosed (O : AdmittedObject) : Prop :=
  O.groundingWitness

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

deriving Repr, DecidableEq

def sourceRepository : String := "metaphysics-grounding-lemma-canonical-lane"
def sourceDescription : String := "Metaphysics Grounding Lemma — a statement about the relation between metaphysical dependence and logical grounding."
def sourceTheoremBoundary : TheoremStatement := {
  sourceKey := sourceRepository,
  theoremName := sourceRepository,
  theoremObject := sourceDescription,
  classicalBoundary := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end MetaphysicsGroundingLemmaCanonicalLaneLean
end HautevilleHouse