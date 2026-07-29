import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

structure FunctionalSuperalgebra where
  underlyingAlgebra : Type u
  involution : underlyingAlgebra → underlyingAlgebra
  gradedCommuting : Prop
  supertrace : underlyingAlgebra → ℂ

def FunctionalSuperalgebraClosed (A : FunctionalSuperalgebra) : Prop :=
  A.gradedCommuting

theorem functional_superalgebra_closed (A : FunctionalSuperalgebra) :
    FunctionalSuperalgebraClosed A := by
  exact A.gradedCommuting

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse