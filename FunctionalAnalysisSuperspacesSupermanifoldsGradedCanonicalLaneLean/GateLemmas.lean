import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean

def gateClosed (A : GradedAdmissibleClass) : Prop :=
  A.gradingPreserved ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : GradedAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FunctionalAnalysisSuperspacesSupermanifoldsGradedCanonicalLaneLean
end HautevilleHouse