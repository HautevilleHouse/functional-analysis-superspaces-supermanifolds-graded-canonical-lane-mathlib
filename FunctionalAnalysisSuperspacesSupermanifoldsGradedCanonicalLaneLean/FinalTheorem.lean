import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean.GradedFunctionalAnalysisBridge

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

def ConstrainedGradedFunctionalAnalysisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graded_functional_analysis_endgame (A : AdmissibleClass) :
    ConstrainedGradedFunctionalAnalysisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse
