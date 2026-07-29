import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure GradedAlgebraPackage (G : GradingPackage) where
  multiplication : Type u
  unit : Type v
  associativity : Prop
  gradedCommutativity : Prop
  unital : Prop

structure GradedAlgebraEvidence {G : GradingPackage} (A : GradedAlgebraPackage G) where
  associativityClosed : A.associativity
  gradedCommutativityClosed : A.gradedCommutativity
  unitalClosed : A.unital

def GradedAlgebraClosed {G : GradingPackage} (A : GradedAlgebraPackage G) : Prop :=
  A.associativity ∧ A.gradedCommutativity ∧ A.unital

theorem graded_algebra_closed_from_evidence
    {G : GradingPackage} (A : GradedAlgebraPackage G) (E : GradedAlgebraEvidence A) :
    GradedAlgebraClosed A := by
  exact And.intro E.associativityClosed (And.intro E.gradedCommutativityClosed E.unitalClosed)

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse